
(defrule try0
(declare (salience 5000))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tried )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praBAvI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  try.clp  	try0   "  ?id "  praBAvI )" crlf))
)

;"tried","Adj","1.praBAvI"
;A tried machine.
;
;
(defrule try1
(declare (salience 4900))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahanakara_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " try.clp	try1  "  ?id "  " ?id1 "  pahanakara_xeKa  )" crlf))
)






;Added by Meena(9.3.10)
;Thomas Edison tried two thousand different materials in search of a filament for the light bulb  .
(defrule try2
(declare (salience 4800))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 material|chemical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRaNa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp       try2   "  ?id "  parIkRaNa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi " ?*wsd_dir* "  try.clp    try2  "  ?id " kA )" crlf))
)




;Added by Meena(25.9.09)
;I tried phoning but there was no answer . 
(defrule try3
(declare (salience 4500))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp       try3   "  ?id "  prayAsa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi " ?*wsd_dir* "  try.clp    try2  "  ?id " kA )" crlf))
)




;Salience reduced by Meena(9.3.10)
(defrule try4
(declare (salience 0))
;(declare (salience 4700))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp 	try4   "  ?id "  prayAsa_kara )" crlf))
)






(defrule try5
(declare (salience 4600))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp 	try5   "  ?id "  prayAsa )" crlf))
)

;"try","N","1.prayAsa"
;I will give it a try && see.
;--"2.trAi[ragabE_Kela_meM]"
;
;try:
;koSiSa_karanA/prayawna_karanA
;jAzca_karanA/Koja_bIna_karanA
;ajamAnA/*_kara_xeKanA
(defrule try6
(declare (salience 4500))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trying )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaRtakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp 	try6   "  ?id "  kaRtakara )" crlf))
)
;Modified wsd_word_mng as wsd_root_mng ---  by manju


;"trying","Adj","1.kaRtakara"
;The workers had a trying day.
;
;particle_on_- && category=verb	pahanakara_xeKa	100


;"try","N","1.prayAsa"
;I will give it a try && see.
;--"2.trAi[ragabE_Kela_meM]"
;
;try:
;koSiSa_karanA/prayawna_karanA
;jAzca_karanA/Koja_bIna_karanA
;ajamAnA/*_kara_xeKanA


;@@@   ---Added by Prachi Rathore
;Let's not try our luck too far, said one.[gyan-nidhi]
;हमें अपनी किस्‍मत उतनी दूर तक नहीं आजमानी चाहिए एक ने कहा।
(defrule try7
(declare (salience 5000))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 luck|fate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjamAnA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp       try7   "  ?id "  AjamAnA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi " ?*wsd_dir* "  try.clp    try7  "  ?id " ko )" crlf))
)
