
(defrule perch0
(declare (salience 5000))
(id-root ?id perch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id perched )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bETA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  perch.clp  	perch0   "  ?id "  bETA_huA )" crlf))
)

;"perched","Adj","1.bETA huA"
;The perched bird was singing a song.
;--"2.UzcA yA KZawaranAka sWAna para raKA huA"
;A castle perched high above the river.
;
(defrule perch1
(declare (salience 4900))
(id-root ?id perch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id addA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perch.clp 	perch1   "  ?id "  addA )" crlf))
)

;"perch","N","1.addA{cidZiyoM_Axi_ke_bETane_kA}"
;The sparrow shuffled on the perch.
;--"2.UzcA_sWAna"
;We watched the game from precarious perch at the last && the highest seats of the stadium.
;--"3.maCalI{eka_prakAra}"
;There are many perchs in my acquarium.
;
(defrule perch2
(declare (salience 4800))
(id-root ?id perch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perch.clp 	perch2   "  ?id "  bETa )" crlf))
)
;"perch","V","1.bETanA{adde_para}"
;The birds perched over the roof.
;We usually perch on high stools in the computer laboratory.
;
