
(defrule culture0
(declare (salience 5000))
(id-root ?id culture)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cultured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id susaMskqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  culture.clp  	culture0   "  ?id "  susaMskqwa )" crlf))
)

;"cultured","Adj","1.susaMskqwa"
;He is a cultured man
;
(defrule culture1
(declare (salience 4900))
(id-root ?id culture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMskqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  culture.clp 	culture1   "  ?id "  saMskqwi )" crlf))
)

;default_sense && category=noun	saMskAra	0
;"culture","N","1.saMskAra"
;Institutions should be centres of culture
;--"2.saMskqwi"
;People from different cultures throng here
;__"3.jIvANu_saMvarXana"
;A sudent is doing the culture of the E-Coli bacteria 
;
;LEVEL 
;
;
;Headword : culture
;
;"culture","N","1.saMskqwi"
;People from different cultures throng here
;viBinna saMskqwi ke logoM kA yahAz jama-Gata honA cAhiye
;
;--"2.saMskAra"
;Schools should inculcate right culture in the minds of its students.
;vixyAlayoM ko apane vixyArWiyoM ke mana meM sahI saMskAra uwpanna karane cAhiez.
;<--saMskAra vaha jo kisI saMskqwi se judZe
;
;--"3.jIvANu_saMvarXana"
;A sudent is doing the culture of the E-Coli bacteria
;eka vixyArWI I-kolAI jIvANu para jIvANu saMvarXana kA kArya kara rahA hE
;<--jIvANuoM kA saMvarXana karanA<--jIvANuoM kA saMskAra karanA
;
;"cultured","Adj","1.susaMskqwa"<--manuRya susaMskqwa waBI bana sakawA hE jaba use
;                 ucca saMskAra mileM apane parivAra Ora samAja se<--saMskAra
;He is a cultured man
;vaha eka susaMskqwa AxamI hE
;
;
;             nota:-- uparyukwa'culture'Sabxa ke liye yaxi samaswa vAkyoM kA 
;                   avalokana kareM wo isa niRkarRa para pahuzca sakawe hEM ki saBI     
;                 SabxoM kA arWa eka hI sArWaka Sabxa 'saMskAra'se nikAlA jA sakawA
;                 hE awaH isakA sUwra nimna prakAra liKa sakawe hEM
;
;                  sUwra : saMskAra[<saMskqwi]
;
;
;
;
;
;
;
