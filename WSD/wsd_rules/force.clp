
(defrule force0
(declare (salience 5000))
(id-root ?id force)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id forced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id balapUrvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  force.clp  	force0   "  ?id "  balapUrvaka )" crlf))
)

(defrule force1
(declare (salience 4900))
(id-root ?id force)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id forced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id balakqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  force.clp  	force1   "  ?id "  balakqwa )" crlf))
)

;"forced","Adj","1.balakqwa/anivArya"
;His resignation was forced.
;--"2.kqwrima
;The air-hostess gave a forced smile.
;
;
(defrule force2
(declare (salience 4800))
(id-root ?id force)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 feed)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jabaraxaswI_KilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " force.clp	force2  "  ?id "  " ?id1 "  jabaraxaswI_KilA  )" crlf))
)




;Added by Meena(13.10.09)
;Modified by Sukhada (30-12-09) as the relation name "kriyA-kqxanwa_viSeRaNa" has been modified as "kriyA-kqxanwa_karma".
;It struggled to force its body through that little hole . 
(defrule force3
(declare (salience 4700))
(id-root ?id force)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  force.clp     force3   "  ?id "  nikAla )" crlf))
)



(defrule force4
(declare (salience 4600))
(id-root ?id force)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  force.clp 	force4   "  ?id "  majabUra_kara )" crlf))
)

;default_sense && category=verb	majabUra_kara	0
;"force","V","1.majabUra_karanA"
;She  forced him to take up a job in the city.
;--"2.jabaraxaswI_uwpanna_karanA"
;She forced a smile.
;--"3.balapUrvaka_GusanA/nikalanA"
;The cricketers forced their way through the crowd.
;
;
;LEVEL 
;
;
;                force sUwra (nibanXa)
;                ----- 
;
;"force","N","1.bala"
;They used force to open the jammed door.
;--"2.balaprayoga"       -------- < bala
;The police took away the protesters by force.
;--"3.senA"      -------- < bala
;The Air force was pressed into operation in Kargil.
;--"4.badZI_saMKyA"      -------- < senA ---< bala
;Women turned up in force.
;--"5.lAgU_honA"  ------- < praBAviwa_honA <-- bala_lAnA
;The new law will come into force next month.
;
;"force","V","1.majabUra_karanA"   ----- < balapUrvaka_karavAnA
;She  forced him to take up a job in the city.
;--"2.jabaraxaswI_uwpanna_karanA"  ------ < balapUrvaka_karanA
;She forced a smile.
;--"3.balapUrvaka_GusanA/nikalanA"     ------  < bala
;The cricketers forced their way through the crowd.
;
;"forced","Adj","1.balakqwa"  ----- < bala
;His resignation was forced.
;--"2.kqwrima    -------- < anicCA_se_karanA<--balapUrvaka_karanA
;The air-hostess gave a forced smile.
;-------------------------------------------------------
;
;sUwra : senA[>bala]
;--------
;
;-- upariliKiwa saBI vAkyoM meM sUwrarUpa meM anwarnihiwa eka bala kA BAva
;   xeKA jA sakawA hE . saBI viBinna laganevAle arWoM meM `bala' ke BAva ko 
;   sUwrarUpa meM xeKane para arWa-viswAra saralawayA samaJa meM AwA hE . 
;
;-- aMgrejI meM sAmAnyawaH saMjFArUpa jaba kriyArUpa meM baxalawA hE wo kaI prakAra 
;   kA baxalAva usameM samBava howA hE . isa prakAra hama isa mUla Sabxa ko 
;   ina kriyArUpoM ko xeKa sakawe hEM--
;        - jabaraxaswI uwpanna karanA 
;        - balapUrvaka GusanA/nikalanA 
;        - majabUra karanA 
;        - lAgU honA 
;   upara ke wIna XAwuoM ke prayoga meM spaRtawaH bala kA BAva JalakawA hE .
;   lAgU hone meM BI bala kA BAva hE kyoMki kisI cIja kA lAgU honA 
;   waba howA hE, jaba usa cIja ke viroXa meM kisI kA aswiwva ho .
;   yaxi viroXa meM kuCa nahIM wo lAgU hone kI bAwa hI nahIM, vaha kriyAnvayana 
;   ke rUpa meM xeKI jAwI hE .
;
;-- bala kA rUpa sAmAnyawaH senA meM xeKA jAwA hE . awaH senA ke arWa meM 
;   isakA prayoga . 
;
;-- badI saMKyA meM bala kI aXika saMBAvanA xIKawI hE . isake arWa meM BI
;   samBavawaH isI kAraNa prayoga .       
;
;-- kqwrima kA rUpa hI balapUrvaka lAyA jAwA hE . kqwrima use kahawe hEM, jo
;   apanI svABAvika sWiwi meM na ho . svABAvika sWiwi kA KonA waBI 
;   samBava hE, jaba bala kA prayoga kiyA jAye . balapUrvaka kisI prakAra kA 
;   prayAsa na huA ho wo svaBAva kA KonA asamBava hE . isa waraha kqwrima
;   ke arWa meM prayoga .
;
