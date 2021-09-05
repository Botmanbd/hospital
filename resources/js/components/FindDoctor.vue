<template>
  <div>
    <div class="card">
      <div class="card-header">Записаться</div>
      <div class="card-body">
        <datepicker class="my-datepicker" calendar-class="my-datepicker_calendar" :disabledDates="disabledDates"  :format="customDate" v-model="time" :language="ru" :inline=true></datepicker>
      </div>
    </div>


    <div class="card">
      <div class="card-header">Доступно для записи</div>
      <div class="card-body">
        <table class="table table-striped">
          <thead>
          <tr>
            <th>#</th>
            <th>Фото</th>
            <th>ФИО</th>
            <th>Компетенция</th>
            <th>Запись</th>
          </tr>
          </thead>
          <tbody>
          <tr v-for="(d,index) in doctors">
            <th scope="row">{{index+1}}</th>
            <td>
              <img :src="'/images/'+ d.doctor.image" width="80">
            </td>
            <td>{{d.doctor.name}}</td>
            <td>{{d.doctor.department}}</td>
            <td>
              <a :href="'/new-appointment/'+ d.user_id+'/'+d.date">
                <button class="btn btn-success">Запись на прием</button></a>
            </td>
          </tr>
          <td v-if="doctors.length==0">Нет свободных мест на {{this.time}}</td>
          </tbody>

        </table>
        <div class="text-center">
          <pulse-loader :loading="loading" :color="color" :size="size"></pulse-loader>
        </div>
      </div>
    </div>

  </div>
</template>

<script type="text/javascript">
import datepicker from 'vuejs-datepicker';
import {ru} from 'vuejs-datepicker/dist/locale'
import PulseLoader from 'vue-spinner/src/PulseLoader.vue'
import * as moment from 'moment'



export default {

  data() {
    return {
      time: '',
      ru: ru,
      doctors: [],
      loading: false,
      disabledDates:{
        to: new Date(Date.now() -8640000)
      }
    }
  },
  components: {
    datepicker,
    PulseLoader
  },
  methods: {
    customDate(date) {
      this.loading = true

      this.time = moment(date).format('YYYY-MM-DD');
      axios.post('/api/finddoctors',{date:this.time}).then((response)=>{
        setTimeout(()=>{
          this.doctors = response.data
          this.loading=false
        },1000)
        this.doctors = response.data
      }).catch((error)=>{alert('error')})
    }
  },
  mounted() {
    this.loading=true
    axios.get('/api/doctors/today').then((response) => {
      this.doctors = response.data
      this.loading=false
    })
  }
}
</script>

<style scoped>
.my-datepicker >>> .my-datepicker_calendar{
  width: 100%;
  height: 330px;
  font-weight: bold;
}

</style>