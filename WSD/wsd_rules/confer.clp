
(defrule confer0
(declare (salience 5000))
(id-root ?id confer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_parAmarSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " confer.clp	confer0  "  ?id "  " ?id1 "  se_parAmarSa_kara  )" crlf))
)

(defrule confer1
(declare (salience 4900))
(id-root ?id confer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_parAmarSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " confer.clp	confer1  "  ?id "  " ?id1 "  se_parAmarSa_kara  )" crlf))
)

(defrule confer2
(declare (salience 4800))
(id-root ?id confer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confer.clp 	confer2   "  ?id "  praxAna_kara )" crlf))
)

;default_sense && category=verb	parAmarSa_kara	0
;"confer","V","1.parAmarSa_karanA"
;She conferred with her guide before starting the research work.
;--"2.praxAna_karanA"
;He was conferred the doctoral degree by the university.
;
;LEVEL 
;Headword : confer
;
;Examples --
;
;--"1.praxAna_karanA"
;He was conferred with the title of "Sir' the same year.
;usako usI varRa 'sara' kI upAXi praxAna_huI. 
;She behaves as if her position confers her the right to be obeyed.
;vaha Ese vyavahAra karawI hE jEse usakA paxa use yaha aXikAra praxAna karawA hE ki saba usakI AjFA mAne 
;--"2.parAmarSa_karanA"
;The panel conferred before arriving at a decision.
;pEnala ne nirNaya para pahuzcane se pahale parAmarSa kiyA. <--vicAra AxAna_praxAna kiye
;
;ukwa uxAharaNoM se spaRta hE ki 'confer' kA arWa 'praxAna_karanA' hE. 'parAmarSa_karanA' meM BI yahI arWa nihiwa hE. 'parAmarSa_karanA' prakriyA meM alaga alaga vyakwi eka xUsare ko apane apane vicAra praxAna karawe hEM. Ora isaprakAra se vicAroM kA AxAna_praxAna 
;howA hE. awaH isakA sUwra kuCa isaprakAra se banAyA jA sakawA hE -
;
;sUwra : praxAna_karanA[>parAmarSa_karanA]
