
(defrule hunt0
(declare (salience 5000))
(id-root ?id hunt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hunting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SikAra_kA_Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hunt.clp  	hunt0   "  ?id "  SikAra_kA_Kela )" crlf))
)

;"hunting","N","1.SikAra kA Kela"
;rAjaparivAra meM 'hunting' eka ullAsamaya Kela WA.
;
;
(defrule hunt1
(declare (salience 4900))
(id-root ?id hunt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hunt.clp	hunt1  "  ?id "  " ?id1 "  DUzDa_nikAla  )" crlf))
)

;The police hunted down the murderer.
;pulisa ne kAwila ko DUzDa nikAlA
(defrule hunt2
(declare (salience 4800))
(id-root ?id hunt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hunt.clp	hunt2  "  ?id "  " ?id1 "  DUzDa_nikAla  )" crlf))
)

;The police hunted for the murderer.
;pulisa ne kAwila ko DUzDa nikAlA
(defrule hunt3
(declare (salience 4700))
(id-root ?id hunt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DazUDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hunt.clp	hunt3  "  ?id "  " ?id1 "  DazUDa  )" crlf))
)

;You must hunt this problem out.
;wumhe isa muSkila kA hala DUzDanA hogA
(defrule hunt4
(declare (salience 4600))
(id-root ?id hunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hunt.clp 	hunt4   "  ?id "  Koja )" crlf))
)

;default_sense && category=noun	AKeta yAwrA	0
;"hunt","N","1.AKeta yAwrA"
;purAwawvajFa purAwawva-saMbanXI 'hunt' meM lage hEM.
;
;
(defrule hunt5
(declare (salience 4500))
(id-root ?id hunt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 food )
(viSeRya-for_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hunt.clp 	hunt5   "  ?id "  Koja )" crlf))
)

(defrule hunt6
(declare (salience 4400))
(id-root ?id hunt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SikAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hunt.clp	hunt6  "  ?id "  " ?id1 "  SikAra_kara  )" crlf))
)

