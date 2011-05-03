
;Added by Meena(25.4.11)
;Her reputation was tarnished after the affair with a married man. (3rd Parse)
;They had a passionate affair for six months. 
(defrule affair0
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
(or(viSeRya-with_saMbanXI  ?id ?id1)(viSeRya-viSeRaNa  ?id ?id1)(samAsa  ?id ?id1))
(id-root ?id1 love|passionate|extramarital|adulterous|man|person|boy|girl|woman)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prema_saMbanXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair0   "  ?id "  prema_saMbanXa )" crlf))
)


;Added by Meena(27.4.11)
;Their house was a 2-story affair.
;The debate was a pretty disappointing affair. 
(defrule affair1
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair1   "  ?id "  - )" crlf))
)




;Added by Meena(25.4.11)
;Her hat was an amazing affair with feathers and a huge brim.
;She wore a long black velvet affair. 
(defrule affair2
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
(or(viSeRya-viSeRaNa  ?id ?id1)(samAsa  ?id ?id1))
(id-root ?id1 amaze|velvet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair2   "  ?id "  cIjZa )" crlf))
)




;Added by Meena(25.4.11)
;The arms-dealing affair has severely damaged the reputation of the government. 
;He is always meddling in other people's affairs. 
(defrule affair3
(declare (salience 0))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAmalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair3   "  ?id "  mAmalA )" crlf))
)




;Added by Meena(25.4.11)
;How I spend my money is my affair.
;What I do in my spare time is my affair.
(defrule affair4
(declare (salience 0))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id affair)
(id-root =(- ?id 1) my|your|his|our|their|her)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samasyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  affair.clp       affair4   "  ?id "  samasyA)" crlf))
)


