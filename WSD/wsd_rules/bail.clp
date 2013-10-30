
(defrule bail0
(declare (salience 5000))
(id-root ?id bail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jamAnawa_para_rihA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bail.clp	bail0  "  ?id "  " ?id1 "  jamAnawa_para_rihA_kara  )" crlf))
)

;The lawyer bailed out the thief.
;vakIla ne cora ko jamAnawa para rihA karavA xiyA
(defrule bail1
(declare (salience 4900))
(id-root ?id bail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 musIbawa_se_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bail.clp	bail1  "  ?id "  " ?id1 "  musIbawa_se_nikAla  )" crlf))
)

(defrule bail2
(declare (salience 4800))
(id-root ?id bail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 musIbawa_se_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bail.clp	bail2  "  ?id "  " ?id1 "  musIbawa_se_nikAla  )" crlf))
)

(defrule bail3
(declare (salience 4700))
(id-root ?id bail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZamAnawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bail.clp 	bail3   "  ?id "  jZamAnawa )" crlf))
)

;default_sense && category=noun	jamAnawa	0
;"bail","N","1.jamAnawa"
;saMjaya kI jamAnawa 1 miliyana dOYlara para niSciwa huI.
;
;LEVEL 
;Headword : bail
;
;
;Examples --
;
;N
;
;--"1.jZamAnawa"
;The bail is fixed at Rs.5000/-.
;pAzca hajZAra rupaye kI jZamAnawa nirXAriwa huyI hE.
; "Excessive bail ought not to be required." Blackstone.
;   [1913 Webster]
;jZyAxA jZamAnawa kI jZarUrawa nahIM honI cAhiye.
;--"2.bAltI"
;There were no bails  in the boat for removing the water.
;bota meM pAnI nikALne ke liye koI bAltI nahIM WI.
;
;V
;
;--"1.jZamAnawa_xenA"
;His father bailed him out.
;usake piwA ne usakI jZamAnawa xI.
;--"2.pAnI_nikAlanA"   <---bAltI Bara kara 
;The boat needed bailing.
;bota meM se pAnI nikAlane kI jZarUrawa WI.
;
;isakI itimolojI kuCa isaprakAra hE -
;
;Noun - OF- bail -guardian -custody 
;Verb - OF- bailler -to deliver, to release
;Noun -  F- baille - bucket
;
;isake AXAra para anwarnihiwa sUwra kuCa isa prakAra se banAyA jA sakawA hE -
;
;XAraka - raKanA -jisake pAsa hE vaha xegA - xenA
; |
; |
;bAltI - bAltI_BaranA -bAltI_Bara_kara_nikAlanA-nikAlanA
;           |
;           |
;         jo BarA huA hE -jamA -jise jamA kareM-jZamAnawa
;
;sUwra : jZamAnawa^bAltI[>nikAlanA]
