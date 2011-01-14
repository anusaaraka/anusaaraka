
(defrule alien0
(declare (salience 5000))
(id-root ?id alien)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alien.clp 	alien0   "  ?id "  parAyA )" crlf))
)

;"alien","Adj","1.parAyA"
;Going to an alien country for the first time made me nervous. 
;
(defrule alien1
(declare (salience 4900))
(id-root ?id alien)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anyaxeSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alien.clp 	alien1   "  ?id "  anyaxeSI )" crlf))
)

;"alien","N","1.anyaxeSI"
;Some aliens from abroad were staying in the guest house.
;
;LEVEL 
;
;
;Headword : alien
;
;Examples --
;
;"alien","Adj","1.parAyA"-xeSa-anyaxeSIya
;Going to an alien country for the first time was embarrassing for me.
;pahalI bAra kisI parAye xeSa meM jAnA mere liye GabarAhata pUrNa howA hE.
;
;"alien","N","1.anyaxeSI"-yAni xUsare xeSa se Aye huye-anyaxeSI
;Some aliens from abroad were staying in the guest house.
;kuCa vixeSa se Aye huye, anyaxeSI gesta-hAusa meM raha rahe We. 
;
;"alienate","VT","1.vimuKa_karanA"-apane prawikUla banA liyA
;The Government's Defamation Bill had alienated many of its supporters.
;sarakAra ke mAnahAni viXeyaka ne bahuwa se apane samarWakoM ko vimuKa kara xiyA.
;
;"alienation","N","1.anyasaMkrAmaNa"-apavarwana-vimuKawA kI BAvanA-
;                 saMsAra meM jIne kI prawikUla BAvanA kA uwpanna honA-prawikUla
;
;Depression can create a sense of alienation from the world.
;mAnasika uxAsI isa saMsAra se vimuKawA kI BAvanA waka uwpanna kara sakawI hE
;
;parAyA-xeSa-anyaxeSIya-anyaxeSI
;anyasaMkrAmaNa-apavarwana-vimuKawA kI BAvanA-prawikUla BAvanA-prawikUla 
;
;       nota:-- 'alien'Sabxa ke liye uparyukwa saBI vAkyoM para yaxi XyAna xeM 
;             yaha kaha sakaweM ki isakA mUla BAva 'anyaxeSI'Ora'prawikUla'
;           arWa se nikAlA jA sakawA hE. awaH isakA sUwra nimna prakAra
;            liKa sakawe hEM
;
;                    sUwra : anyaxeSI[>prawikUla]
;
;
;
;
;
;
;
