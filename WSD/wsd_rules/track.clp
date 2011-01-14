
(defrule track0
(declare (salience 5000))
(id-root ?id track)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id trEka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  track.clp 	track0   "  ?id "  trEka )" crlf))
)

;"track","N","1.trEka{motaravAhana_kA}"
;The track gave way which resulted in the rail-accident.
;--"3.trEka{xOdZane_kA_mArga}"
;Tracks are ready for the races.
;--"4.buladojZara_kI_cakrapattI"
;A bulldozer is moving on the track.
;--"5.trEka{grAmoPona_rekArda_ke_BAga}"
;Whitney Houston has given two tracks on her album.
;
(defrule track1
(declare (salience 4900))
(id-root ?id track)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  track.clp 	track1   "  ?id "  pawA_lagA )" crlf))
)

;"track","VI","1.pawA_lagAnA"
;The police tracked the dacoits to their hideout.
;--"2.sAWa_sAWa_calakara_Pilma_KIMcanA"
;The director took a tracking shot of the picture.
;
;LEVEL 
;Headword : track
;
;Examples --
;"track","N","1.cihna<--cihna 
;Ravi followed the bear's tracks through the mud.
;ravi ne kIcadZa meM BAlU ke [paxa]cihnoM kA pICA kiyA.
;
;"2.paWa/mArga"<--AxamI yA koI vaswu jisa mArga se jAwI hE,apane cihna CodZawI jAwI hE<--cihna
;Russian satellite,Mir has followed it's track. 
;raSiyana setelAita mIra ne apane paWa kA anugamana kiyA
;"3.Koja<--kisI BI cIja kI Koja koI na koI cihna{surAga} ke sahAre hI karI jAwI hE<--
;cihna
;The CBI is on the track of the secret agent.
;sIbIAI KuPiyA ejenta kI Koja para hE
;
;"4.patarI"<--trEka
;The train left the track && derailed near the village.
;gAdZI gAzva ke pAsa patarI CodZa kara usase nIce uwara gayI 
;
;"5.trEka"<--trEka
;They have made the racing track perfectly even.
;unhone xOdZa kA trEka pUrNawayA samawala banAyA
;
;"6.aMSa/BAga <--kuCa BAga para viSiRta vyakwi kA viSiRta saMgIwa kA honA<--trEka para honA
;Here is a track from his new album. 
;yahAz usake naye elabama ke kuCa BAga hEM
;
;"track","V","1.Koja karanA" <--surAga yA cihnoM ke jZariye kisI ko Koja nikAlanA<--cihna
;The police tracked the criminals to their hide-out.
;pulisa ne aparAXiyoM ko unake Cipe huye sWAna se Koja nikAlA
;
;"2.calawe-calawe Poto KIMcanA"<--PilmoM me trEka para kEmarA calawA rahawA hE
;The camera man is tracking the action shot.
;kEmarA-mEna calawe-calawe aBinaya ke ciwra KIMca rahA hE
;
;
;nota:--uparyukwa'track'Sabxa ke samaswa saMjFA Ora kriyA ke vAkyoM para xraRti dAleM     wo yaha niRkarRa nikAla sakawe hEM ki trEka kA mUla arWa 'cihna' se Ora   
;    ' trEka'se BalI-BAzwi samaJA jA sakawA hE.
;
;       sUwra : cihna[trEka]  
