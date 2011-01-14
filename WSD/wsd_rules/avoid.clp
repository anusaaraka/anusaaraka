
(defrule avoid0
(declare (salience 5000))
(id-root ?id avoid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id avoided )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id tAlA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  avoid.clp  	avoid0   "  ?id "  tAlA_huA )" crlf))
)

;"avoided","Adj","1.tAlA_huA"
(defrule avoid1
(declare (salience 4900))
(id-root ?id avoid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tAla))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  avoid.clp 	avoid1   "  ?id "  tAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  avoid.clp     avoid1   "  ?id "  ko )" crlf)
)
)

;"avoid","V","1.tAla"
;default_sense && category=verb	se_baca	0
;"avoid","VT","1.se_bacanA"
;Ram always tried to avoid driving during night.
;rAma hameSA rAwa ke samaya kAra calAne se bacawA WA.
;--"2.bacAnA"
;He hit the tree in an effort to avoid hitting the cow./
;
