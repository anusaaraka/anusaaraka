
(defrule ground0
(declare (salience 5000))
(id-root ?id ground)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) play)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mExAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ground.clp 	ground0   "  ?id "  mExAna )" crlf))
)

(defrule ground1
(declare (salience 4900))
(id-root ?id ground)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) play )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mExAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ground.clp 	ground1   "  ?id "  mExAna )" crlf))
)

(defrule ground2
(declare (salience 4800))
(id-root ?id ground)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZamIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ground.clp 	ground2   "  ?id "  jZamIna )" crlf))
)

(defrule ground3
(declare (salience 4700))
(id-root ?id ground)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamIna_para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ground.clp 	ground3   "  ?id "  jamIna_para_raKa )" crlf))
)

;default_sense && category=verb	XarawI_para_raKa	0
;"ground","V","1.XarawI_para_raKanA"
;His bat was grounded
;He ground the stick to avoid falling
;
;LEVEL 
;Headword : ground
;
;Examples --
;
;--"1.jZamIna"
;Ravi lifted Manish off the 'ground'.
;ravi ne manIRa ko 'jZamIna' se uTA liyA.
;The contraption took a few erratic hops but never really got off the ground.
;vaha upakaraNa xo-cAra bAra kuCa uCalA para vAswava meM jZamIna se Upara nahIM uTA. (yAni udZA nahIM)
;--"2.sWAna"  <--jZamIna
;Lakes, rivers && oceans are the dumping ground for industrial wastes.
;wAlAba, naxiyAz Ora samuxra Oxyogika apaSiRta ko PeMkane kA sWAna bana gaye hEM.
;--"3.AXAra" <--warka kI jZamIna
;He won the case on this ground.
;usane isa AXAra para kesa jIwa liyA.
;
;"get off the ground","cAlU_honA"
;The project should get off the ground before the end of this month.
;isa mahIne ke anwa waka projEkta(para kAma) cAlU ho jAnA cAhiye
;
;"gain ground","PElanA{logoM_waka}"
;His views on free software are gaining ground.
;'PrI_sOYPtaveyara' para usake vicAra PEla rahe hEM.
;
;At last the sale 'ground to a halt'.    ???
;AKira sela 'rukI'.
;
;
;sUwra : jZamIna`
