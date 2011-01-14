;Modified by Meena(5.12.09); used (kriyA-in_saMbanXI ?id1 ?id) in addition to(kriyA-into_saMbanXI ?id1 ?id)
;Modified by Meena(4.9.09) used (kriyA-into_saMbanXI ...) instead of (id-word ?id1 in)
;He took all her letters into the yard and put a match to them . 
(defrule yard0
(declare (salience 5000))
(id-root ?id yard)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-into_saMbanXI  ?id1 ?id)(kriyA-in_saMbanXI  ?id1 ?id))
;(id-word ?id1 in)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  ahAwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng	"?*wsd_dir*"	yard.clp	yard0   "  ?id "  ahAwA )" crlf))
)

(defrule yard1
(declare (salience 4900))
(id-root ?id yard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gajZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng "?*wsd_dir*"    yard.clp        yard1   "  ?id "  gajZa )" crlf))
)

;default_sense && category=noun	gajZa	0
;"yard","N","1.gajZa"
;In Tamil Nadu,the bride wears 9 yard saree on her wedding.
;--"2.Azgana/prAzgaNa"
;The backyard of my house is always kept clean.
;--"3.pAla PElAne kA JazdA"
;The yard of the boat got damaged due to cyclone.
;
;
