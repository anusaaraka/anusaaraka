
(defrule face0
(declare (salience 5000))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id facing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAmanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  face.clp  	face0   "  ?id "  sAmanA )" crlf))
)

;"facing","N","1.sAmanA"
;He is afraid of facing the facts.
;
;
(defrule face1
(declare (salience 4900))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_kaTina_parisWiwi_kA_sAmanA_karanA_yA_svIkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " face.clp	face1  "  ?id "  " ?id1 "  kisI_kaTina_parisWiwi_kA_sAmanA_karanA_yA_svIkAra  )" crlf))
)



;Added by Meena(29.3.11)
;When you stand on this rock and face the east, the waves of the bay of bengal lap your feet.

(defrule face3
(declare (salience 4800))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 east|west|north|south)
=>
(retract ?mng)
(assert (kriyA_id-object_viBakwi ?id kI_ora))
(assert (id-wsd_root_mng ?id muzha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  face.clp      face3   "  ?id "  muzha_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  face.clp      face3   "  ?id " kI_ora )" crlf))
)





;Added by Meena(24.02.10)
;The people of Orissa are facing grave adversities due to the cyclone .
(defrule face4
(declare (salience 4700))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (kriyA_id-object_viBakwi ?id kA))
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  face.clp      face4   "  ?id "  sAmanA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  face.clp      face4   "  ?id " kA )" crlf))
)

;Added by Pramila(Banasthali University) on 24-10-2013
;A hexagon has six faces.
;eka RatakoNa ke CaH Palaka howe hEM.
;As seen from the figure, only the two faces 1 and 2 will contribute to the flux; electric field lines are parallel to 
;the other faces and they, therefore, do not contribute to the total flux.
;जैसा चित्र से दृष्टिगोचर होता है , केवल दो फलक 1 तथा 2 ही फ्लक्स में योगदान देङ्गे ; विद्युत क्षेत्र रेखाएँ अन्य फलकों के समान्तर हैं और वे इसीलिए कुल फ्लक्स में योगदान नहीं देतीं .
(defrule face5
(declare (salience 5000))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-to_saMbanXI  ?id1 ?id)(viSeRya-saMKyA_viSeRaNa  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Palaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  face.clp  	face5   "  ?id "  Palaka )" crlf))
)

;Added by Pramila(Banasthali University) on 24-10-2013
;With India's defeat in the world cup match the captain lost his face.
;viSvakapa meM hAra kara BArawIya kapwAna ne apanI prawiRTA Ko xI hE.
(defrule face6
(declare (salience 5000))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(kriyA-with_saMbanXI  ?id1 ?id2)
(id-root ?id2 defeat)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prawiRTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  face.clp  	face6   "  ?id "  prawiRTA )" crlf))
)

;Added by Pramila(Banasthali University) on 24-10-2013
;The south face of the mountain was very steep.
;pahAdZa kA xakRiNI aBimuKa ekaxama KadZI caDZAI vAlA WA.
(defrule face7
(declare (salience 5000))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBimuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  face.clp  	face7   "  ?id "  aBimuKa )" crlf))
)

;Added by Pramila(Banasthali University) on 24-10-2013
;In this exercise, the gymnast should face the floor.
;isa vyAyAma meM kasarawa karanevAle ko apanA muKa jZamIna kI ora raKanA howA hE.
(defrule face8
;(declare (salience 0))
(declare (salience 5000))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_ora_muKa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  face.clp 	face8   "  ?id "  kI_ora_muKa_karanA )" crlf))
)

;added by Pramila(Banasthali University) on 28-10-2013
;The changing face of Britain.  ;oald
;britena ka baxalawA huA rUpa.
(defrule face9
(declare (salience 4900))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  face.clp 	face9   "  ?id "  rUpa)" crlf))
)

;added by pramila(Banasthali University) on 28-10-2013
;The birds build their nests in the rock face. ;oald  
;pakSI apanA GOsalA cattAnoM kI ora banAwe hEM.
(defrule face10
(declare (salience 4800))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  face.clp 	face10   "  ?id "  ora )" crlf))
)

;--------------------------------default rules----------------------------------

;Many people find it hard to face up to the fact that they are getting old.
;bahuwa se loga isa kaTina parisWiwi kA sAmanA karane se darawe hEM ki vaha bUDZe ho rahe hEM
(defrule face11
(declare (salience 4000))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ceharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  face.clp 	face11   "  ?id "  ceharA )" crlf))
)
;Salience reduced by Meena(24.02.10)
(defrule face12
(declare (salience 0))
;(declare (salience 4000))
(id-root ?id face)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  face.clp 	face12   "  ?id "  sAmanA_kara )" crlf))
)

;default_sense && category=verb	sAmanA-honA/kara	0
;"face","V","1.sAmanA-honA/karanA"
;In this exercise, the gymnast should face the floor
;--"2.sAmanA_honA"
;He was faced with a new problem in this period of crisis.
;
;LEVEL 
;Headword : face
;
;Examples --
;                   
;"face","N","1.ceharA"
;He washed his face with soap
;usane sAbuna se apanA ceharA XoyA.
;--"2.prawiRTA"
;With India's defeat in the world cup match the captain lost his face.
;viSvakapa meM hAra kara BArawIya kapwAna ne apanI prawiRTA Ko xI hE.
;--"3.aBimuKa"
;The south face of the mountain was very steep.
;pahAdZa kA xakRiNI aBimuKa ekaxama KadZI caDZAI vAlA WA.
;--"4.Palaka"
;A hexagon has six faces.
;eka RatakoNa ke CaH Palaka howe hEM.
;
;"face","V","1.sAmanA-honA[karanA]"
;He faced the calamity quite bravely.
;usane vipawwi kA sAmanA kAPI bahAxurI se kiyA.
;--"2.kI_ora_muKa_karanA"
;In this exercise, the gymnast should face the floor.
;isa vyAyAma meM kasarawa karanevAle ko apanA muKa jZamIna kI ora raKanA howA hE.
;--"3.muzha_xiKAnA" 
;He had to face his father after his misconduct
;usako apane isa bure vyavahAra ke bAxa apane piwA ko BI muzha xiKAnA WA.
;
;"face-lift","N","1.sOnxaryavarXana"<-- cehare_kA_sOnxarya_baDZAnA
;She looks beautiful because she's had a face-lift
;vaha sunxara lagawI hE kyoMkiM usane cehare para suXAra kI
;
;"face value","N","1.prawyakRa_mUlya"-muKa_muxrA
;
;vyAKyA : uparyukwa saMjFA va kriyA vAkyoM kA "muKa/ceharA mUlArWa hE"
;muKyawayA kriyA vAkya meM "sAmane_honA/AnA" kA BAva hE. awaH isakA sUwra hogA -
;
;sUwra : ceharA^sAmanA
;                                       
