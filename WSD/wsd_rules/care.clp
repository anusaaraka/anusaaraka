
(defrule care0
(declare (salience 5000))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " care.clp	care0  "  ?id "  " ?id1 "  xeKaBAla_kara  )" crlf))
)

;She cared for me a lot in my illness though she was not a very good friend of mine.
;usane bImArI meM merI bahuwa xeKaBAla kI hAlAMki vaha merI bahuwa acCI xoswa nahIM WI
(defrule care1
(declare (salience 4900))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KyAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  care.clp 	care1   "  ?id "  KyAla )" crlf))
)

(defrule care2
(declare (salience 4800))
(id-root ?id care)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  care.clp 	care2   "  ?id "  xeKaBAla_kara )" crlf))
)

;default_sense && category=verb	cinwA_karanA/paravAha_kara	0
;"care","V","1.cinwA_karanA/paravAha_karanA"
;I really care about my work.
;
;LEVEL 
;
;
;Headword : Care
;
;Examples --
;
;"care","N"
; 1."sAvaXAnI"      
;  You should take care while handling glasses.
; SISe ke gilAsoM ko pakadZawe samaya wumhe sAvaXAnI barawanI cAhie. 
;
;2."xeKa-BAla"
;Sita decorated house with great care.
;sIwA ne Gara badZI xeKaBAla kara sajAyA.
;
;3."ciMwA" 
;Ram is free from care.
;rAma ciMwAo se mukwa hEM.
;
;"care","V"
;
;4."hiwa-rakRA_karanA"
;She is helpless to take care of herself.
;vaha apane hiwa-rakRA karane meM asamarWa hEM.
;
;
;5."cAhanA"
;Would you care for a drink ?
;kyA Apa eka peya lenA cAheMge ?
;
;6."ciMwA_karanA"
;She doesn't much care about her being unemployed.
;use apane anaEmplAyada hone kI koI viSeRa cinwA nahIM hE.
;
;uparyukwa vAkyo meM vAkya 1, 2, Ora 4 ko 'xeKaBAla' se jodZA jA sakawA hE, 
;
;1.SISe ke gilAso ko pakadZawe samaya wumhe sAvaXAnI barawanI cAhie. <--xeKaBAla kara pakadZanA cAhiye
;2. sIwA ne badZA xeKaBAla ke apanA Gara sajAyA.
;4.vaha apane hiwoM-rakRA karane me asamarWa hEM . <-- xeKaBAla karane meM 
;
;kinwu vAkya 3, 5 Ora 6 meM xeKaBAla vAlA arWa bahuwa spaRta nahIM hE
;
;
;   ???3.rAma ciMwAoM se mukwa hEM. <--ciMwAoM kI xeKaBAla nahIM karawA  
;   ???5. kyA Apa eka peya lenA cAheMge ? <---kyA Apa peya lene ke bAre meM xeKaBAla karanA cAheMge.
;   ???6. use apane anaEmplAyada hone kI koI viSeRa cinwA nahIM hE.<--koI xeKaBAla nahIM hE.
;
;kinwu ina vAkyoM meM 'cinwA' arWa praXAna ho rahA hE
;
;   3.rAma ciMwAoM se mukwa hEM. 
;   6. use apane anaEmplAyada hone kI koI viSeRa cinwA nahIM hE.
;
;vAkya 5 hAzlAki yahAz BI samasyApraxa hE. kinwu yaha muhAvarexAra prayoga hE.
;  ??? 5. kyA Apa eka peya lenA cAheMge ? <---peya lene ke bAre meM vicAra kareMge <--isa baare meM cinwana kareMge Ora lenA cAheMge
;
;eka bAwa jo ina uxAharaNoM se xiKawI hE vaha yaha ki saMjFA rUpa meM wo 'care' Sabxa
;kA praXAnawayA prayoga 'xeKaBAla' ke hI arWa meM hE. kinwu kriyA rUpa meM isameM praXAna arWa 'cinwA_karane' kA lagawA hE.
;
;7. Ram doesn't really care about other people.
;   rAma xUsaroM kI cinwA nahIM karawA.
; 
;8. All he really cares about is his work
;   vaha sirPa apane kAma kI  cinwA karawA hE.
;
;9. She doesn't care as to what happens to her children.
;   usako yaha cinwA nahIM hE ki usake baccoM kA kyA hogA.
;
;'cinwA' kA arWa saMjFA meM BI hE. awaha saMBava hE ki kriyA rUpa meM Awe Awe vahI 
;praXAna ho gayA ho. Ora kisI haxa waka 'xeKaBAla' meM BI 'cinwA' kA BAva nihiwa hE.
;ina uxAharaNoM ke AXAra para 'care' Sabxa kA nimna sUwra banAyA jA sakawA hE -
;
;
;sUwra : xeKaBAla^ciMwA_karanA
;
;
