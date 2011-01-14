
;Added by human
; Sun rises in the east.
(defrule rise0
(declare (salience 5000))
(id-root ?id rise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 sun)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rise.clp 	rise0   "  ?id "  uga )" crlf))
)

(defrule rise1
(declare (salience 4900))
(id-root ?id rise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rose )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gulAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rise.clp  	rise1   "  ?id "  gulAba )" crlf))
)

(defrule rise2
(declare (salience 4800))
(id-root ?id rise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rose )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gulAba_kA_PUla_yA_pOXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rise.clp  	rise2   "  ?id "  gulAba_kA_PUla_yA_pOXA )" crlf))
)

;"rose","N","1.gulAba_kA_PUla_yA_pOXA"
;There are many different types of roses in my garden.
;
(defrule rise3
(declare (salience 4700))
(id-root ?id rise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rising )
(id-cat_coarse ?id1 noun) 
(viSeRya-viSeRaNa ?id1 ?id)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id unnawiSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rise.clp  	rise3   "  ?id "  unnawiSIla )" crlf))
)

;"rising","Adj","1.unnawiSIla"
;Japan is a rising country.
;
(defrule rise4
(declare (salience 4600))
(id-root ?id rise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rising)
(viSeRya-det_viSeRaNa ?id =(- ?id 1))
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixroha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rise.clp 	rise4   "  ?id "  vixroha )" crlf))
)

;"rising","N","1.vixroha/uwWAna"
;Para military forces were brought in to suppress the rising.
;

;Added by human
; Sun rises in the east.
(defrule rise6
(declare (salience 4400))
(id-root ?id rise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rise.clp 	rise6   "  ?id "  Upara_uTa )" crlf))
)


;Added by Meena(20.8.09)
;She rose from the table to welcome me .
(defrule rise7
(declare (salience 4400))
(id-root ?id rise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rise.clp    rise7   "  ?id "  uTa )" crlf))
)

;Added by Veena Bagga (22-01-10)
;;Example:-There is a rise in all food items. 
(defrule rise8
(declare (salience 6500))
(id-root ?id rise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rise.clp    rise8 " ?id " vqxXi)" crlf))
) 

;default_sense && category=verb	uTa	0
;"rise","VI","1.uTanA"
;The smoke is rising from the chimney.
;She rose from the table to welcome me.
;--"2.uxiwa honA"
;The sun rises in the east.  
;--"3.jI uTanA"
;He rose from the death bed.
;--"4.baDanA"
;The river has risen by one metre due to continous raining. 
;The cost of living continues to rise.
;Air pollution has risen above an acceptable level. 
;I felt sadness is rising within me. 
;She is the rising young politician.
;My cake is very spongy,it rose nicely.
;--"5.wIvra honA"
;My voice rose in anger.
;The wind is rising which shows a storm is coming.
;--"6.prasanna ho jAnA"      
;Her spirits rose after hearing the good news.
;--"7.unnawi karanA"      
;She rose from an attender to become an officer.
;
;
