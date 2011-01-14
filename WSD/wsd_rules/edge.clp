
(defrule edge0
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge0   "  ?id "  XAra )" crlf))
)

;"edge","N","1.XAra"
;--"2.kinArA"
;The boy stood on the edge of the cliff.
;
(defrule edge1
(declare (salience 4900))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge1   "  ?id "  kinArA_lagA )" crlf))
)

;"edge","VT","1.kinArA_lagAnA"
;The table-cloth is edged with lace.
;
;LEVEL 
;Headword : edge
;
;Examples --
;
;--"1.kinArA"
;He kept the glass on the edge of the table.
;usane gilAsa mejZa ke kinAre para raKa xiyA.
;She was standing on the edge of the cliff.
;vaha cattAna ke kinAre para KadZI WI.
;--"2.XAra"
;To dress the chicken I need a knife with a sharp edge.
;murge ko sAPa karane ke liye muJe eka wejZa XAra vAlA cAkU cAhie.
;--"3.kagAra"
;Many birds in India are on the edge of extinction.
;BArawa kI bahuwa sI cidZiyAz samApwa ho jAne ke kagAra para hEM.
;--"4.WodZA_sA_Age"
;So far as professional qualifications go Meera has an edge over Ravi.
;jahAz waka yogyawA kA praSna hE mIrA ravi se WodZA Age hE.
;--"5.wIkRNawA"
;Meera kept her calm but her voice showed a distinct edge.
;mIrA SAnWa rahI para usakI AvAjZa meM WodZI wIkRNawA WI.
;--"6.kinArevAlA"
;The garden has a brick path edged with small grass.
;bagIce meM GAsa ke kinArevAlI eka IMtoM kI pagadaNdI hE.
;--"7.KisakanA" 
;The man edged slowly towards her.
;vaha AxamI XIre-XIre usakI ora Kisakane lagA.
;
;anwarnihiwa sUwra ;
;
;kinArA - mahIna kinAre jiwanA wIkRNa -XAra -kinArA pAra kara lenA -WodA sA Age baDZa jAnA-KisakanA
;
;
;sUwra : [wIkRNa]_kinArA`[>KisakanA]
