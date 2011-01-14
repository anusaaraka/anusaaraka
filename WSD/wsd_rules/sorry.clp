
(defrule sorry0
(declare (salience 5000))
(id-root ?id sorry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 very)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sorry.clp 	sorry0   "  ?id "  xuKI )" crlf))
)

(defrule sorry1
(declare (salience 4900))
(id-root ?id sorry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sorry.clp 	sorry1   "  ?id "  xuKI )" crlf))
)

;muJe Kexa hE Vs mEM hUz xuKI
;default_sense && category=adjective	Kexa	0
;"sorry","Adj","1.Kexa"
;I am sorry that I could not pick you up.
;--"2.glAni se BarapUra"
;I am sorry about my deed.
;--"3.GatiyA"
;It's a sorry seen.
;--"4.xayanIya"
;The school is in a sorry condition.
;
;
