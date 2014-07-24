;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;He went to the eminence of the mountain.         ;shiksharthi
;वह पहाड़ की ऊँचाई तक पहुँचा.
(defrule eminence0
(declare (salience 5000))
(id-root ?id eminence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ? ?id)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eminence.clp 	eminence0   "  ?id "  UzcAI )" crlf))
)

;------------------------default rules----------------------------------
;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;He reached eminence as a scientist.        ;shiksharthi
;वह वैज्ञानिक के रूप में ऊँची प्रतिष्ठा तक पहुँचा.
(defrule eminence1
(declare (salience 4000))
(id-root ?id eminence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiRTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eminence.clp 	eminence1   "  ?id "  prawiRTA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
(defrule eminence2
(declare (salience 0))
(id-root ?id eminence)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiRTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eminence.clp 	eminence2   "  ?id "  prawiRTA )" crlf))
)
