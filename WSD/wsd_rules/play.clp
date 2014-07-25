
;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
(defrule play00
(declare (salience 4900))  
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
(id-cat_coarse ?id2 noun)
(id-word ?id1 film|hero|actor|actress|theatre|character)
(and(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?)(kriyA-in_saMbanXI  ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBinaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " play.clp play00 " ?id "  aBinaya_kara )" crlf)) 
)

;Commented by Shirisha Manju (17-03-14) :conflict sentence   'On Saturdays I play games at school.'
;(defrule play0
;(declare (salience 4000))  ;Salience changed from 5000 to 4000 by Roja 07-11-13. Ex: On Saturdays I play games at school. (Note: This rule need to be improved.) 
;(id-root ?id play)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 at)
;(kriyA-at_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
;(kriyA-object ?id ?)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id aBinaya_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " play.clp play0 " ?id "  aBinaya_kara )" crlf)) 
;)
;
;He just plays at being a writer.
;vaha leKaka hone kA aBinaya karawA hE
(defrule play1
(declare (salience 4900))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aBinaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " play.clp	play1  "  ?id "  " ?id1 "  aBinaya_kara  )" crlf))
)

;As kids we used to play at being doctors && patients.
;bacapana meM hama dAktara-marIjZa kA aBinaya karawe We
(defrule play2
(declare (salience 4800))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIcA_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " play.clp	play2  "  ?id "  " ?id1 "  nIcA_xiKA  )" crlf))
)

;You cannot play me down like this!
;wuma muJe isa waraha nIcA nahIM xiKA sakawe
(defrule play3
(declare (salience 4700))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lABa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " play.clp	play3  "  ?id "  " ?id1 "  lABa  )" crlf))
)

;She always play on his feelings.
;vaha hameMSAM usakI BAvanAoM kA PAyaxA uTAwI hE
(defrule play4
(declare (salience 4600))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cApalUsI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " play.clp	play4  "  ?id "  " ?id1 "  cApalUsI_kara  )" crlf))
)

;She is always playing up to her boss.
;vaha hameMSAM apane bAsa kI cApalUsI karawI hE
(defrule play5
(declare (salience 4500))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 avajFA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " play.clp	play5  "  ?id "  " ?id1 "  avajFA_kara  )" crlf))
)

;He is playing up towards his parents.
;vaha apane mAwA-piwA kI  avajFA  karawA hE
(defrule play6
(declare (salience 4400))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 jolt)
(viSeRya-by_saMbanXI ?id1 ?id) ;Replaced viSeRya-by_viSeRaNa as viSeRya-by_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAtaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp 	play6   "  ?id "  nAtaka )" crlf))
)

(defrule play7
(declare (salience 4300))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 see)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAtaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp 	play7   "  ?id "  nAtaka )" crlf))
)

(defrule play8
(declare (salience 4200))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp 	play8   "  ?id "  Kela )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
(defrule play9
(declare (salience 4100))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 trick)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SarArawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " play.clp	play9  "  ?id "  " ?id1 "  SarArawa_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Scientists also believe that magnetic effects played an important role during the contraction.
;वैज्ञानिकों का यह भी विश्वास है कि सिकुड़न के दौरान चुंबकीय प्रभावों ने भी महत्वपूर्ण भूमिका निभायी।
(defrule play10
(declare (salience 4000))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 role|responsibility|part)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niBAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp 	play10   "  ?id "  niBAI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Aditya saw a flock of sheep and ran off to play with them.  [Gyannidhi]
;आदित्य ने भेड़ों का झ़ुंड देखा तो साथ खेलने के लिये उनके बीच भागा।
(defrule play11
(declare (salience 3900))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 preposition)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " play.clp	play11  "  ?id "  " ?id1 "  Kela )" crlf))
)


;particle_with_- && category=verb	soca	100
;PP_null_with && category=verb	soca	100
;Example is needed. Default sense is still KelanA as in
;The children played with the toys.
(defrule play12
(declare (salience 3800))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp 	play12   "  ?id "  Kela )" crlf))
)

;default_sense && category=noun	Kela	0
;"play","N","1.Kela"
;Our aim is learn through play.
;--"2.nAtaka"
;That radio play was very good.
;--"3.guMjAiSa"
;The cliff hanger got a play on the rope && climbed up.
;--"4.gawiviXi"
;New budget boons changed the market plays.
;
;


;$$$ Modified by Sonam Gupta MTech IT Banasthali 25-1-2014
;Added by sheetal(25-02-10)
;The playing of the piano really bothers John .
(defrule play13
(declare (salience 4250))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id playing|play)
(or (kqxanwa-of_saMbanXI  ?id ?id1)(kriyA-of_saMbanXI ?id ?id1)(kriyA-object ?id ?id1)(viSeRya-of_saMbanXI ?id ?id1));Modified by Roja (09-08-10)
(id-root ?id1 piano|composition|music)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp      play13   "  ?id "  baja )" crlf))
)
;kriyA-of_saMbanXI added by Manju (16-03-11)


;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;She played the piano with a light touch. [OALD]
;उसने हल्के स्पर्श से पियानो बजाया .
(defrule play14
(declare (salience 5550))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 piano|composition|music)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp      play14   "  ?id "  bajA )" crlf))
)
