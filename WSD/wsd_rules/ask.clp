
(defrule ask0
(declare (salience 5000))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAlacAla_pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ask.clp	ask0  "  ?id "  " ?id1 "  hAlacAla_pUCa  )" crlf))
)

;The doctor asked after his patient.
;dAktara ne marIja kA hAlacAla pUCA
(defrule ask1
(declare (salience 4900))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object_1 ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp 	ask1   "  ?id "  pUCa )" crlf))
(assert (kriyA_id-object1_viBakwi ?id se))
)


;Added by sheetal(6-10-09) 
;"They were asked that he be allowed to go."
(defrule ask2
(declare (salience 4900))
(id-root ?id ask)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viXi_vAkya)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp    ask2   "  ?id "  kaha )" crlf))
)


;(defrule ask2
;(declare (salience 4900))
;(id-root ?id ask)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(kriyA-subject ?id ?)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id pUCa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ask.clp    ask2   "  ?id "  pUCa )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ko))
;)
;;They were asked that he be allowed to go   --- by manju

;default_sense && category=verb	pUCa	0
;"ask","VTI","1.pUCanA"
;Ask him about the ring .
;--"2.mAzganA"
;How much they are asking for their house?
;--"3.nimaMwraNa xenA"
;I asked him to come to the party .
;
;LEVEL 
;
;
;Headword : ask
;
;Examples :
;
;"1.pUCanA"   'to put a question to'
;Ask his name.
;usakA nAma pUCo.
;May I ask you a question.
;kyA mEM Apa se eka praSna kara sakawI hUz?
;Did you ask the price?
;kyA wumane xAma pUCA?
;
;"2.mAzganA"   'to make a request'
;May I ask a favour?[of you]?
;kyA mEM Apa se sahAyawA mAzga sakawI hUz?
;How much are taheya asking for their house?
;vaha apane Gara ke lie kiwanA mAzga rahe hEM?
;
;"3.nimaMwraNa xenA" 'to invite'
;I asked him to come to the party.
;mEneM use pArtI meM Ane kA nimaMwraNa xiyA.
;
;"4.ummIxa karanA" 'to expect'
;You are asking too much of him-he's already working as hard as he can.
;wuma usase kuCa jyAxA hI ummIxa kara rahe ho,vaha pahale se hI jyAxA se jyAxA kAma kara   rahA hEM.
;
;
;ina cAroM arWo meM eka mUla arWa sAmane AwA hEM.yAnI yahAz"ask"Sabxa ke cAra arWa howe hue BI eka EsA Sabxa BI hE jisase eka sAmAnya arWa nikalawA hE.  
;yahAz ina sabakA mUla arWa 'pUCanA' AwA hE.jisake hisAba se anuvAxa kuCa EsA hogA.
;
;
;a.usakA nAma pUCo.
;b.kyA mEM Apa se eka praSna pUCa sakawI hUz?
;c.kyA wumane xAma pUCA?
;d.kyA mEM Apa se sahAyawA "mAzga" sakawI hUz <------pUCa sakawI hUz
;e.vaha apane Gara ke lie kiwanA "mAzga" rahe hEM?      <----pUCa rahe hEM             
;f.mEMneM use pArtI meM Ane ko nimaMwraNa xiyA. <---kahA<--pUCA
;
;yahAz praswuwa saBI uxAharaNo meM mUla arWa ke rUpa meM "pUCanA" A rahA hEM.isalie yahAz     sUwra "pUCanA" hI hogA.
;
;
;
;sawra : pUCanA`
;
;
