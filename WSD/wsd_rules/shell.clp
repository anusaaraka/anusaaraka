
(defrule shell0
(declare (salience 5000))
(id-root ?id shell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shell.clp 	shell0   "  ?id "  CilakA )" crlf))
)

(defrule shell1
(declare (salience 4900))
(id-root ?id shell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shell.clp 	shell1   "  ?id "  CilakA_uwAra )" crlf))
)

;"shell","V","1.CilakA uwAranA"
;He ate the nuts after shelling them off.
;--"2.golAbArI karanA/golI barasAnA"
;Continous shelling in the border regions has made the life of local villagers absolutely miserable.
;
;LEVEL 
;Headword : shell
;
;
;Examples --
;
;"shell","N","1.CilakA"
;It is dificult to break the shell of a coconut.
;nAriyala ke Cilake ko wodZanA AsAna nahIM hE.
;--"2.AvaraNa"
;The walls have a concrete shell.
;xivAloM para kaMkrIta kA AvaraNa hE.
;The tortoise hid behind his shell.
;kaCuA apane AvaraNa ke pICe Cipa gayA.
;--"3.DAzcA{bAharI}"
;Only the shell of the building was left after the fire.
;Aga ke bAxa basa imArawa kA DAzcA baca gayA. 
;--"4.SaMKa/sIpa"
;I collected many colorful shells on the beach.
;samuxrawata para mEMne bahuwa se raMgIna SaMKa Ora sIpiyAz ekawriwa_kiye.
;--"5.golA{bArUxa}"
;The room was full of artillary shells.
;kamarA bArUxI goloM se BarA WA.
;
;"shell","V","1.CilakA_uwAranA"
;The monkey ate the peanuts after shelling them.
;banxara ne mUzgaPalI CilakA_uwAra_kara KAyI.
;--"2.golAbArI karanA/golI barasAnA"
;Continous shelling in the border regions has made the life of local villagers ab
;solutely miserable.
;sImAvarwI ilAkoM meM barAbara golAbArI hone kI vajaha se vahAz ke gAzvavAsiyoM kA jIvana kaRtapraxa ho gayA hE.
;
;ukwa uxAharaNoM se 'shell' Sabxa kA eka arWa jo uBara kara AwA hE vaha 'kisI BI vaswu 
;ke Upara lage mote AvaraNa' kA hE. EsA AvaraNa jo wodZanA kaTina ho. isI arWa se 'bArUxa ke gole kA arWa' vikasiwa huA lagawA hE. bArUxa ko eka XAwu ke gole meM Bara kara usakA golA wEyA kiyA jAwA hE. yahAz se kriyA 'golA barasAnA' ke arWa meM isakA viswAra ho gayA.
;awaH isa Sabxa kA anwarnihiwa sUwra kuCa EsA hogA --
;
;anwarnihiwa_sUwra ;
;
;                       *motA_AvaraNa
;                           |
;                           |
;                  |---------------------|
;                  |                     |(AvaraNavAlA)
;               sIpa, CilakA               |
;                     |                 golA{bArUxa_kA}------|(kriyA)
;                     |                 |      -----------|
;                     |                 |      |          |    
;                     |                 |   CilakA_uwAranA   golA_barasAnA
;                     |-----------------|------^             ^ 
;                                       |                    |
;                                       |--------------------|
;
;
;
;isake AXAra para isakA sUwra hogA
;
;sUwra : CilakA`[>sIpa]^golA{bArUxa_kA}
;
;
;isI arWa ke viswAra se kuCa anya samAsika Sabxa prajaniwa ho gaye lagawe hEM.
;
;"shellbean","N","1.PalI"
;He ate all the shellbeans kept in the refrigerator.
;usane Prija meM raKIM PaliyAz KA lIM.
;
;"shellshock","N","1.manovikqwi{golAbArI_kI_AvAjZa_ke_kAraNa}"
;She is suffering from shellshock.
;vaha golAbArI kI AvAjZa ko sunawe-sunawe ho jAnevAlI manovikqwi kA SikAra hE.
;
;"shellshocked","Adj","1.manovikqwigraswa"
;He was shellshocked.
;
;anwima xo Sabxa bahuwa rocaka hE. yaha golAbArI kI Xvani ko lagAwAra sunawe rahane ke
;kAraNa huI manovikqwi kI ora saMkawe karawe hEM. isakA pUrNa viswaara hogA 'Reaching
;a state of shock by continously listening to the sound of shelling.'
;yAni golAbArI kI AvAjZa lagAwAra sunawe sunawe kisI kA EsI mAnasika avasWA meM pahuzca jAnA ki vaha manovikAra bana jAe. 
