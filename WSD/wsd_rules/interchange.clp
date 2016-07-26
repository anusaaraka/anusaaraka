;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[1-2-14]
;A continuous interchange of ideas.[oald]
;विचारों की लगातार अदला बदली . 
(defrule interchange0
(declare (salience 5000))
(id-root ?id interchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axalA_baxalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interchange.clp 	interchange0   "  ?id "  axalA_baxalI )" crlf))
)

;@@@ Added by Prachi Rathore[1-2-14]
;He believed that a full and free interchange of opinion between the Government and the University about post-graduate teaching would ease the situation. [gyan-nidhi]
;उनका विचार था कि स्नातकोत्तर अध्यापन के बारे में सरकार और विश्वविद्यालय के बीच सम्पूर्ण और स्वतंत्र विचार-विमर्श से स्थित आसान हो जायेगी।
(defrule interchange1
(declare (salience 5100))
(id-root ?id interchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 opinion)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vicAra_vimarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " interchange.clp 	interchange1  "  ?id "  " ?id1 "  vicAra_vimarSa )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[1-2-14]
;
(defrule interchange2
(id-root ?id interchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interchange.clp 	interchange2   "  ?id "  moda )" crlf))
)

;@@@ Added by Prachi Rathore[1-2-14]
;Cable technology will make it possible for people to interchange information on a rapid two-way basis.[oald]
;केबल प्रौद्योगिकी लोगों के लिये  एक तेज द्विपथवर्तीय आधार पर सूचना अदला बदली करना  सम्भव बनाएगी . 
(defrule interchange3
(id-root ?id interchange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axalA_baxalI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interchange.clp 	interchange3   "  ?id "  axalA_baxalI_kara )" crlf))
)
