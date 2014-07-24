;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################


;@@@ added by Pramila(BU) on 19-12-2013
;She was detained without trial.         ;oald
;उसे बिना सुनवाई के हिरासत में लिया गया.
;One man has been detained for questioning.        ;oald
;एक आदमी को प्रश्नोत्तरी के लिए हिरासत में लिया गया.
(defrule detain0
(declare (salience 4950))
(id-root ?id detain)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-for_saMbanXI  ?id ?id1)(kriyA-without_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hirAsawa_meM_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detain.clp 	detain0   "  ?id "  hirAsawa_meM_le )" crlf))
)

;@@@ added by Pramila(BU) on 19-12-2013
;A suspect has been detained by the police for further questioning.      ;cald
;एक संदिग्ध को आगे की पूछताछ के लिए पुलिस ने हिरासत मे लिया.
(defrule detain1
(declare (salience 4950))
(id-root ?id detain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(viSeRya-for_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hirAsawa_meM_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detain.clp 	detain1   "  ?id "  hirAsawa_meM_le )" crlf))
)
;@@@ added by Pramila(BU) on 19-12-2013
;He's been detained at a meeting.     ;cald
;उसे मीटिंग में आने में देर हो गई.
(defrule detain2
(declare (salience 4950))
(id-root ?id detain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detain.clp 	detain2   "  ?id "  xera_ho )" crlf))
)

;@@@ added by Pramila(BU) on 19-12-2013
;I'm sorry I'm late - I was unavoidably detained.     ;oald
;मैं माफी चाहता हूँ मैं देर से आया - मुझे अपरिहार्य कारण से देर हो गई.
(defrule detain3
(declare (salience 4950))
(id-root ?id detain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)
(kriyA-vAkyakarma  ?id1 ?id2)
(id-word ?id2 late)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xera_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detain.clp 	detain3   "  ?id "  xera_ho )" crlf))
)

;@@@ added by Pramila(BU) on 19-12-2013
;Several of the injured were detained overnight in hospital. ;cald
;कई घायलों को अस्पताल में देर तक रोक कर रखा गया.
(defrule detain4
(declare (salience 4000))
(id-root ?id detain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_kara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detain.clp 	detain4   "  ?id "  roka_kara_raKa )" crlf))
)

;@@@ added by Pramila(BU) on 19-12-2013
(defrule detain5
(declare (salience 0))
(id-root ?id detain)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_kara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detain.clp 	detain5   "  ?id "  roka_kara_raKa )" crlf))
)


