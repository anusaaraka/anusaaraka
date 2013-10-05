
(defrule derive0
(declare (salience 5000))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " derive.clp	derive0  "  ?id "  " ?id1 "  nikala  )" crlf))
)

;The word 'Wasser' has derived from an old German word that means 'Water'.
;'vAsara' Sabxa kI uwpawwi eka purAne jarmana Sabxa se hui hE jisakA arWa 'pAnI' hE
(defrule derive1
(declare (salience 4900))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSleRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derive.clp 	derive1   "  ?id "  viSleRaNa )" crlf))
)

;default_sense && category=verb	prApwa_kara	0
;"derive","VT","1.prApwa_karanA"
;She derives a great deal of pleasure from her neighbour's garden.
;--"2.uwpanna_honA
;The present name was  derived from an older form.
;
;LEVEL 
;Headword : derive
;
;Examples --
;
;"derive","VT","1.prApwa_karanA"
;She derives a great deal of pleasure from her neighbour's garden.
;vaha padosI ke bagIce se bahuwa Ananxa prApwa karawI hE <--padosI kA bagIcA use bahuwa Ananxa xewA hE<---padZosI kA bagIcA usake mana meM Ananxa uwpanna karawA hE
;--"2.vyuwpanna_honA
;The present name was  derived from an older form.
;yaha nAma eka purAne rUpa se vyuwpanna hE.
;
;anwarnihiwa sUwra ;
;
;vyuwpanna honA -uwpanna_honA-jo uwpanna huA vaha pAnA
;
;sUwra : prApwa_karanA[<vyuwpanna_honA]
;
;

;Added by Pramila(Banasthali University)
;Descrates derived the snell's law.

(defrule derive2
(declare (salience 4900))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 law|rule)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRpAxiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derive.clp 	derive2   "  ?id "  niRpAxiwa_kara )" crlf))
)

