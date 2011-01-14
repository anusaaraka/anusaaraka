
(defrule brave0
(declare (salience 5000))
(id-root ?id brave)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brave.clp 	brave0   "  ?id "  sAhasI )" crlf))
)

;Changed for compatibility with sabdasutra
;default_sense && from_list(category,adj|adj_comp|adj_super)	bahAxura	0
;"brave","Adj","1.bahAxura"
;--"2.sAhasI"
;Familiarity with danger makes a brave man braver but less daring
;Girls decked out in brave new dresses
;
(defrule brave1
(declare (salience 4900))
(id-root ?id brave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brave.clp 	brave1   "  ?id "  sAmanA_kara )" crlf))
)

;"brave","VT","1.sAmanA_karanA/lalakAranA"
;Brave the natural elements
;She braved the elements
;
