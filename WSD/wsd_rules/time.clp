;Modified by Preeti 15-09-13
;The movie is set at the time of the Russian Revolution.  [Oxford Advanced Learner's Dictionary]
;Pilma rUsI krAnwi ke kAla para PilamAI gayI hE.
;Removed (id-word =(- ?id 1) ancient|the) and handled it in multi_word_expression.txt
;ancient times &modern times added in multi_word_expression.txt
;In ancient times there were many kingdoms. source: self
;prAcIna kAla meM bahuwa sAre rAjya We.
;A visit to the museum will take you back in time to the 1930s.
;safgrahAlaya kA xarSana Apako 1930s ke kAla_meM vApasa le jAegA.
;The toltecs were the predominant civilizations of this time. 
;toltecs isa kAla ke sarvAXika saBya samAja We.
(defrule time_kAla
(declare (salience 600))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 back|revolution|civilization|civilisation)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-in_saMbanXI  ?id1 ?id)(viSeRya-of_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  kAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time_kAla   "  ?id "    kAla )" crlf))
)


;Modified by Preeti 15-09-13
;This room is two times bigger than the hall.[old clp]
;yaha kamarA hoYla kI apekRA xo gunA aXika badA hE.
;"times","N","1.gunA"
(defrule time_gunA
(declare (salience 700))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id times)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  time.clp  	time_gunA   "  ?id "  gunA )" crlf))
)


;Modified by Preeti 15-09-13
;He's determined to pass this time. [Oxford Advanced Learner's Dictionary]
;usane isa bAra pAsa hone kA xqDa niScaya kiyA hE.
;Every time I hear that song I feel happy. 
;hara bAra jaba mEM vaha gAnA sunawA hUz muJe KuSI mahasUsa howI hE.
;Removed (not(id-root =(+ ?id 1) tomorrow)) 
(defrule time_bAra
(declare (salience 540))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or (and (viSeRya-det_viSeRaNa ?id ?id1)(id-word ?id1 next|every|last|many|few|this|both|more))
    (id-cat_coarse =(- ?id 1) number)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  time.clp  	time_bAra   "  ?id "  bAra )" crlf))
)

;Added by preeti 15-09-13
;He always plays in perfect time. [Oxford Advanced Learner's Dictionary]
;vaha hameSA bilkula TIka laya meM bajAwA hE.
(defrule time_laya
(declare (salience 550))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id) (kriyA-in_saMbanXI  ?id1 ?id)(viSeRya-viSeRaNa  ?id ?))
(id-word ?id1 beat|keep|plays|music)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  time.clp  	time_laya  "  ?id "  laya )" crlf))
)

;Added by preeti 15-09-13
;He never takes any time off. [Oxford Advanced Learner's Dictionary]
;vaha kaBI koI CuttI nahIM lewA hE.
(defrule time_CuttI
(declare (salience 560))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word =(+ ?id 1) off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) CuttI))
(if ?*debug_flag* then
(printout wsd_fp "(affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  time.clp  	time_CuttI   "  ?id "  "  =(+ ?id 1) " CuttI )" crlf))
)

;Added by preeti 15-09-13
;My satellite connection timed out—it was so frustrating. [Oxford Advanced Learner's Dictionary]
;merA upagraha kanekSana baMxa ho gaya ye bahuta hi wrasaxAyI WA.
(defrule time_baMxa_ho_jA
(declare (salience 800))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMxa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  time.clp  	time_baMxa_ho_ jA  "  ?id "  "  ?id1 " baMxa_ho_jA )" crlf))
)

;Added by preeti 15-09-13
;‘How long does it take to get to Leeds from here?’ ‘I don't know, I've never timed it.[Oxford Advanced Learner's Dictionary]
;yahAz se PropN-leeds-PropN waka pahuzcane ke lie kiwanA  samaya lagawA hE? mEM nahIM jAnawA hUz, mEMne ise kaBI nahIM nApA. 
(defrule time_nApa
(declare (salience 900))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  time.clp  	time_nApa  "  ?id "  nApa )" crlf))
)

;Added by preeti 15-09-13
;She timed her arrival for shortly after 3.[Oxford Advanced Learner's Dictionary]
;usane 3 baje ke WadzI hI xera bAxa apane Agamana ka samaya_suniSciwa kiyA.
(defrule time_samaya_suniSciwa_kara
(declare (salience 700))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya_suniSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  time.clp  	time_samaya_suniSciwa_kara  "  ?id "  samaya_suniSciwa_kara )" crlf))
)

;Added by preeti 15-09-13
;The winner was timed at 20.4 seconds. [Oxford Advanced Learner's Dictionary]
;jIwane vAle kA samaya 20.4 sekeMda lagAyA gayA.
(defrule time_samaya_laga
(declare (salience 800))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  time.clp  	time_samaya_laga  "  ?id "  samaya_lagA )" crlf))
)

;#############################Default rules#######################################

;They say that time heals all wounds. [ Oxford Advanced Learner's Dictionary]
;ve kahawe hEM ki samaya saba GAva Bara xewA hE.
;This time tomorrow I will be in Canada. [old clp]
;kala isa samaya mEM kanAdA meM hoUzgA.
;isa samaya kala mEM kanAdA meM hoUzgA. (Sukhada suggested this translation also)
(defrule time_samaya
(declare (salience 500))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time_samaya   "  ?id "  samaya )" crlf))
)

;#############################Removed rules#######################################
;both_times	xonoM_bAra
;(id-word ?id times)
;(id-word ?id1 both)
;(viSeRya-det_viSeRaNa ?id ?id1)
;What is the probability of tossing a fair coin twice in a row and getting heads both times? 

;time			isa_samaya/isa_bAra
;(id-word =(- ?id 1) this)
;(idiom_type_1  =(- ?id 1) ?id)
;(or(id-root =(+ ?id 1) ?root)(id-root =(+ ?id 2) ?root)(id-root =(+ ?id 3) ?root))
;=>
;?root tomorrow 	isa_samaya
;else			isa_bAra
;This time tomorrow I will be in Canada . 
;This time I am determined to give a simple sentence for testing .

;any_time	kisI_BI_samaya
;We have a standing invitation to visit them any time .

;time	samaya
;(id-word =(+ ?id 1) of)
;At the time of evolution.

;time_noun	guNA
;(id-word ?id times )
;"times","N","1.guNA"
;This room is two times bigger than the hall.

;time_noun	-
;(id-root =(- ?id 2) lot)
;(viSeRya-of_saMbanXI  =(- ?id 2) ?id)
;Some people take a lot of time to acclimatize themselves to the new environment .

;################### Need to be handled ####################

;This piece is in four-four time. 
;Expecting here time meaning as 'laya'
;Their request was badly timed. 
;Expecting here time meaning as 'samaya para raKa'

;################### Old Examples ####################
;"time","N","1.samaya"
;This time he succeeded.
;--"2.vakwa{GadZI_meM}"
;Do you know what time it is?.
;--"3.kuCa_samaya_waka"
;He had a time holding back the tearso.
;--"4.avasara"
;University stay was a good time for us.
;--"5.yuga"
;How time is changing.
;--"6.koI_niSciwa_samaya"
;Childhood is the best time of life.
;--"7.samaya_kI_gaNanA_karane_kI_SElI"
;Greenwich time.
;--"8.kAla"
;The building will stand the time.
;
;################### Additional Examples ####################
;The changing seasons mark the passing of time.
;Perceptions change over time.
;What time is it?
;What's the time?
;Do you have the time?
;What time do you make it?
;What time do you have?
;The time is now half past ten.
;Can she tell the time yet.
;Can she tell time yet?
;My watch keeps perfect time.
;Look at the time! We'll be late.
;At 6 o'clock local time the bus will arrive.
;What time do you finish work?
;The baby loves bath time.
;I think it's time to go to bed.
;This is hardly the time to discuss politics.
;It's time for lunch.
;It's time the kids were in bed.
;By the time you get there the meeting will be over.
;A computer screen shows arrival and departure times.
;The train arrived right on time.
;You'll feel differently about it when the time comes.
;Have I called at a bad time?
;Shall I call back later?
;The promotion came at just the right time for me.
;We stock six different beers at any one time.
;Allow plenty of time to get to the airport.
;I can probably make the time to see them.
;It takes time to make changes in the law.
;We have no time to lose.
;We got to the airport with time to spare.
;He spends most of his time working.
;She doesn't have much free or spare time.
;Sorry, I can't spare the time.
;What a waste of time!
;I didn't finish the test— I ran out of time.
;Time's up—have you worked out the answer yet?
;Jane's worked here for some time.
;Do it now please—not in three hours' time .
;The journey time is two hours.
;I don't want to take up too much of your precious time.
;What's the hurry, we have all the time in the world.
;His injuries will take a long time to heal.
;Did you have to wait a long time to see the doctor?
;I lived in Egypt for a time.
;The early morning is the best time of day.
;Her parents died a long time ago.
;At one time Emily was my best friend.
;Mr Curtis was the manager in my time.
;The violent times we live in has come to an end.
;the politician who promised ‘peace in our time’.
;Times are hard for the unemployed.
;Times have changed since Grandma was young.
;It doesn't matter if you don't win every time .
;Let's have lunch together the next time you're here .
;He failed his driving test three times.
;He's determined to pass this time.
;When was the last time you saw her?
;How many times do I have to tell you not to do that?
;I remember one time we had to abandon our car in the snow.
;At no time did I give my consent to the plan.
;Did you have a good time in Spain?
;I had an awful time in the hospital.
;Mike and I shared some really good times.
;The winner's time was 11.6 seconds.
;She completed the 500 metres in record time .
;This is the one of the fastest times ever i have seen .
;The conductor beat time with a baton.
;Try and dance in time to the music.
;‘I hope we're not too early.’
;‘You couldn't have timed it better!’
;Publication of his biography was timed to coincide with his 70th birthday celebrations.
;Time how long it takes you to answer the questions.
;A beautifully timed shot will always be appreciated.
