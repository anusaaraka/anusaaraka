
(defrule sight0
(declare (salience 5000))
(id-root ?id sight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqRti))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sight.clp 	sight0   "  ?id "  xqRti )" crlf))
)

;"sight","N","1.xqRti"
;He lost his sight in an accident.
;--"2.xqSya"
;After ten days at sea we had our first sight of land.
;--"3.nigAha"
;Radha's father wants to marry her daughter but there was no one in sight.
;--"4.najZArA"
;The flowers are a lovely sight in spring.
;--"5.lakRaka"
;The sight of a rifle have something in one's sights.
;
(defrule sight1
(declare (salience 4900))
(id-root ?id sight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sight.clp 	sight1   "  ?id "  xeKa )" crlf))
)

;"sight","V","1.xeKanA"
;After a long tired journey, we sighted the refugee camp.
;
