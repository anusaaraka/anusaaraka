
; Added by Amba
(defrule still0
(declare (salience 5000))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) and)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still0   "  ?id "  Pira_BI )" crlf))
)

(defrule still1
(declare (salience 4900))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) lay)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still1   "  ?id "  niScala )" crlf))
)

; I explained him twice && still he did not follow.
;Whatever the outcome is, I am sure he will still be popular.
(defrule still2
(declare (salience 4800))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat_coarse ?id adverb)(kriyA-kriyA_viSeRaNa  ?kri ?id));fact 'kriyA-kriyA_viSeRaNa' added by sheetal.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still2   "  ?id "  aBI_BI )" crlf))
)

(defrule still3
(declare (salience 4700))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) A_comp)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still3   "  ?id "  Ora_BI )" crlf))
)

(defrule still4
(declare (salience 4600))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) A_comp)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still4   "  ?id "  Ora_BI )" crlf))
)

;Vaishnavi
(defrule still5
(declare (salience 4500))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still5   "  ?id "  niScala )" crlf))
)

;a publicity still from his new movie
;The police studied the stills from the security video.
;Vaishnavi
(defrule still6
(declare (salience 4400))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still6   "  ?id "  SAMwa_ho )" crlf))
)

(defrule still7
(declare (salience 4300))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still7   "  ?id "  SAMwa_kara )" crlf))
)

;The wind stilled.
;She spoke quietly to still the frightened child.
;Vaishnavi
(defrule still8
(declare (salience 4200))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) stand)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still8   "  ?id "  niScala )" crlf))
)

(defrule still9
(declare (salience 4100))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) keep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still9   "  ?id "  niScala )" crlf))
)

;We stayed in a village where time has stood still.
; There are still too many secrets around.
;default_sense && category=adverb	Pira_BI	0
;aBI_BI is better that Pira_BI., For Pira_BI, there will be some clues from 
; the previous sentences.
(defrule still10
(declare (salience 4000))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still10   "  ?id "  Pira_BI )" crlf))
)

(defrule still11
(declare (salience 3900))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still11   "  ?id "  SAnwa )" crlf))
)

(defrule still12
(declare (salience 3800))
(id-root ?id still)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  still.clp 	still12   "  ?id "  acala )" crlf))
)

;"still","Adj","1.acala/sWira"
;The photographer asked me to stand still while clicking me.
;--"2.SAnwa"
;The weather was absolutely still before the rain poured in.
;
;
;LEVEL 
;
;
;Headword : still
;
;Examples --
;
;"still","adj","1.acala/sWira<--niScala  
;The photographer asked me to stand still while clicking me.
;PotogrAPara ne Poto KIMcawe samaya muJase sWira KadZe rahane ko kahA.
;
;--"2.SAnwa"
;The weather was absolutely still before the rain poured in.
;bAriSa hone se pahale mOsama bilakula SAnwa WA
;
;--"3.cupa/mOna"
;Why are you so still today?
;Aja wuma iwane cupa kyoM ho?
;<--SAnwa
;
;"still","Adv","1.wo_BI/waWApi"
;She hates me still I love her.
;vaha muJase naParawa karawI hE wo BI mEM usase pyAra karawA hUz.
;<--Pira BI
;
;"2.aba BI"
;Are you still ill?
;kyA wuma aba BI bImAra ho.
;
;"3.jyAxA"
;Rama brings up still more good ideas.
;rAma Ora jyAxA acCe vicAra lAyA hE.
;aBI BI
;
;                nota:--yaxi 'still'Sabxa ke samaswa vAkyoM ko xeKeM   
;               wo saBI arWoM ko xo yA wIna mUla arWoM se jodZa sakawe
;               hEM Ora isakA sUwra nimna prakAra liKa sakawe hEM
;
;                    sUwra : SAnwa-niScala[>aBI-BI>*BI]
;
;
;
;
;
;
;
