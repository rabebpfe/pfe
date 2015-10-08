package pfe.com.tunisie.SendSMS;



import javax.annotation.PostConstruct;
import org.quartz.Trigger;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.quartz.CronTriggerFactoryBean;
import org.springframework.scheduling.quartz.JobDetailFactoryBean;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;





 

@Configuration
public class QuartzServlet {

    private final Logger log = LoggerFactory.getLogger(this.getClass().getSimpleName());

	

	@Autowired
	private ApplicationContext applicationContext;

	@PostConstruct
	public void init() {
		log.debug("QuartzConfig initialized.");
	}

	@Bean
	public SchedulerFactoryBean quartzScheduler() {
		SchedulerFactoryBean quartzScheduler = new SchedulerFactoryBean();


		// custom job factory of spring with DI support for @Autowired!
		AutowiringSpringBeanJobFactory jobFactory = new AutowiringSpringBeanJobFactory();
		jobFactory.setApplicationContext(applicationContext);
		quartzScheduler.setJobFactory(jobFactory);

		

		Trigger[] triggers = { procesoMQTrigger().getObject() };
		quartzScheduler.setTriggers(triggers);

		return quartzScheduler;
	}

	@Bean
	public JobDetailFactoryBean procesoMQJob() {
		JobDetailFactoryBean jobDetailFactory = new JobDetailFactoryBean();
		jobDetailFactory.setJobClass(SampleSMS.class);
		jobDetailFactory.setGroup("spring3-quartz");
		return jobDetailFactory;
	}

	@Bean
	public CronTriggerFactoryBean procesoMQTrigger() {
		CronTriggerFactoryBean cronTriggerFactoryBean = new CronTriggerFactoryBean();
		cronTriggerFactoryBean.setJobDetail(procesoMQJob().getObject());
		cronTriggerFactoryBean.setCronExpression("0 01 09 * * ?");
		cronTriggerFactoryBean.setGroup("spring3-quartz");
		return cronTriggerFactoryBean;
	}


}