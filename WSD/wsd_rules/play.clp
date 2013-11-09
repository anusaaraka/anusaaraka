
(defrule play0
(declare (salience 4000))  ;Salience changed from 5000 to 4000 by Roja 07-11-13. Ex: On Saturdays I play games at school. (Note: This rule need to be improved.) 
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-at_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBinaya_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " play.clp play0 " ?id "  aBinaya_kara )" crlf)) 
)

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
(viSeRya-by_viSeRaNa ?id1 ?id)
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

;particle_with_- && category=verb	soca	100
;PP_null_with && category=verb	soca	100
;Example is needed. Default sense is still KelanA as in
;The children played with the toys.
(defrule play9
(declare (salience 4100))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp 	play9   "  ?id "  Kela )" crlf))
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

;Added by sheetal(25-02-10)
;The playing of the piano really bothers John .
(defrule play10
(declare (salience 4250))
(id-root ?id play)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id playing)
(or (kqxanwa-of_saMbanXI  ?id ?id1)(kriyA-of_saMbanXI ?id ?id1)(kriyA-object ?id ?id1)(viSeRya-of_saMbanXI ?id ?id1));Modified by Roja (09-08-10)
(id-root ?id1 piano)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  play.clp      play10   "  ?id "  baja )" crlf))
)
;kriyA-of_saMbanXI added by Manju (16-03-11)
