;FILE MODIFIED ON 26.8.09 (Meena)




; Added by human
;Modified by Meena(5.12.09)
;Joan Smith is the president of the company .
(defrule company0
(declare (salience 5000))
(id-root ?id company)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 president|director|chairman)
(viSeRya-of_saMbanXI ?id1 ?id)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMpanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  company.clp 	company0   "  ?id "  kaMpanI )" crlf))
)




(defrule company1
(declare (salience 4800))
(id-root ?id company)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 propose)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  company.clp 	company1   "  ?id "  saMsWA )" crlf))
)

(defrule company2
(declare (salience 4700))
(id-root ?id company)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 single)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  company.clp 	company2   "  ?id "  saMsWA )" crlf))
)

(defrule company3
(declare (salience 4600))
(id-root ?id company)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 director)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  company.clp 	company3   "  ?id "  saMsWA )" crlf))
)



;Modified by Meena(31.3.10) ;Added (viSeRya-viSeRaNa ?id ?id1) in the 4th pattern
;This is a story about a small multinational company.
;Modified by Meena(12.01.10)
;Company profits were 5 percent lower than last year.
;She works in the largest computer company in the world.
(defrule company4
(declare (salience 4500))
(id-root ?id company)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(or(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)(viSeRya-viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1))
;(id-word =(- ?id 1) oil)      ;commented by Meena(12.01.10)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMpanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  company.clp 	company4   "  ?id "  kaMpanI )" crlf))
)



;Added by Meena(26.8.09)
;He is being hired by another company.
(defrule company5
(declare (salience 5400))
(id-root ?id company)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 hire)
(kriyA-by_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMpanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  company.clp    company5   "  ?id "  kaMpanI )" crlf))
)





;Added by Meena(11.01.10)
;The company made him a tempting offer of a high salary . 
(defrule company6
(declare (salience 4000))
(id-root ?id company)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMpanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  company.clp   company6   "  ?id "  kaMpanI )" crlf))
)


;Modified by Meena
;Salience reduced by Meena(12.01.10)
(defrule company7
(declare (salience 0))
(id-root ?id company)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  company.clp 	company7   "  ?id "  saMgawi )" crlf))
)

;default_sense && category=noun	kampanI	0
;"company","N","1.kampanI"
;His company is running in profit.
;--"2.saMgawa"
;Nowadays my brother is moving around with bad company.
;
;
