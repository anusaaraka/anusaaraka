
(defrule edge0
(declare (salience 4000))
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

;added by Pramila(BU) on 30-11-2013
;He fell over the cliff's edge.               ;problem sentence
;वह चट्टान के किनारे पर गिर गया.
;The boy stood on the edge of the cliff.           ;sentence of this file
;लड़का चट्टान के किनारे पर खड़ा है.
(defrule edge1
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-on_saMbanXI  ?id1 ?id)(kriyA-over_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge1   "  ?id "  kinArA )" crlf))
)

;added by Pramila(BU) on 30-11-2013
;Many birds in India are on the edge of extinction.                ;sentence of this file
;BArawa kI bahuwa sI cidZiyAz samApwa ho jAne ke kagAra para hEM.
(defrule edge2
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id ?id2)
(id-word ?id2 extinction)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kagAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge2   "  ?id "  kagAra )" crlf))
)

;added by Pramila(BU) on 30-11-2013
;So far as professional qualifications go Meera has an edge over Ravi.       ;sentence of this file
;jahAz waka yogyawA kA praSna hE mIrA ravi se WodZA Age hE.
(defrule edge3
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-over_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodZA_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge3   "  ?id "  WodZA_Age )" crlf))
)

;added by Pramila(BU) on 30-11-2013
;Meera kept her calm but her voice showed a distinct edge.          ;sentence of this file
;mIrA SAnWa rahI para usakI AvAjZa meM WodZI wIkRNawA WI.
(defrule edge4
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 distinct)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIkRNawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge4   "  ?id "  wIkRNawA )" crlf))
)

;added by Pramila(BU) on 30-11-2013
;The garden has a brick path edged with small grass.             ;sentence of this file
;bagIce meM GAsa ke sAWa lagA huA eka IMtoM kA mAraga hE.
(defrule edge5
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge5   "  ?id "  lagA_ho )" crlf))
)

;added by Pramila(BU) on 30-11-2013
;The man edged slowly towards her.            ;sentence of this file
;vaha AxamI XIre-XIre usakI ora Kisaka rahA WA.
(defrule edge6
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-towards_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kisaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge6   "  ?id "  Kisaka )" crlf))
)


(defrule edge7
(declare (salience 4000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge7   "  ?id "  kinArA_lagA )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;Gripping the edge firmly, he pulled the entire portion up. 
(defrule edge8
(declare (salience 4800))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(AjFArWaka_kriyA  ?id1)
(viSeRya-kqxanwa_viSeRaNa  ?id2 ?id1)
(id-root ?id2 pull)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  edge.clp 	edge8   "  ?id "  kinArA )" crlf))
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

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_edge4
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 distinct)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIkRNawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " edge.clp   sub_samA_edge4   "   ?id " wIkRNawA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_edge4
(declare (salience 5000))
(id-root ?id edge)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 distinct)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIkRNawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " edge.clp   obj_samA_edge4   "   ?id " wIkRNawA )" crlf))
)
