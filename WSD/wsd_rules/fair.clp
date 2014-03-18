
(defrule fair0
(declare (salience 5000))
(id-root ?id fair)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRpakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fair.clp 	fair0   "  ?id "  niRpakRa )" crlf))
)

;default_sense && category=noun	svacCa	0
; This entry has come from Sabdasuwra, without refering to the category!
(defrule fair1
(declare (salience 4900))
(id-root ?id fair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id melA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fair.clp 	fair1   "  ?id "  melA )" crlf))
)

;I suppose his criticism was fair comment .
;mEM mAna lewA hUz ki usakI AlocanA uciwa tippaNI WI
;Added by sheetal(1-10-09).
(defrule fair2
(declare (salience 5000))
(id-root ?id fair)
?mng <-(meaning_to_be_decided ?id)
;(link_name-lnode-rnode AN ?id ?id1)
(or (viSeRya-viSeRaNa ? ?id)(samAsa_viSeRya-samAsa_viSeRaNa ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fair.clp      fair2   "  ?id "  uciwa )" crlf))
)


;"fair","N","1.melA"
;On Sunday we went to the fair held in Paradise circle.
;
;
;LEVEL 
;Headword : fair
;
;Examples --
;
;"fair","Adj","1.gorA"
;She is a fair girl.
;vaha gorI ladakI hE.<--sAPa_raMgavAlI<--svacCa_raMga
;--"2.nyAyociwa"
;The referee was fair in the game.
;rePZarI Kela meM nyAyociwa WA <--niRpakRa <--sAPa<--svacCa
;--"3.svacCa"
;I don't find that city fair at all
;muJe vaha Sahara svacCa nahIM lagawA hE
;--"4.acCA"
;Fair weather
;acCA mOsama <----sAPa<--svacCa
; 
;
;"fair","N","1.melA"
;I bought these bangles from the village fair.
;mEMne yaha cUdZiyAz gAzva ke mele se KarIxI hEM.
; 
;vyAKyA - uparyukwa vAkya 2.Kela meM niRpakRawA ke praBAva se "sAPa" hI niRkarRa
;hE Ora anya vAkyoM meM BI `sAPa' yA 'svacCa' hI mUlArWa nikalawA hE. xUsarA
;arWa 'melA' isase asaMbanXiwa prawIwa howA hE. awaH isakA sUwra banegA -
; 
; sUwra : svacCa^niRpakRa/melA 
