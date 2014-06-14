;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
;We got there early but Mike had already left.[oald]
;हम वहाँ जल्दी पहँच गये परन्तु माईक पहले ही चला गया था
(defrule already1
(declare (salience 4000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pehale_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  already.clp    already1   "  ?id "  pehale_hI )" crlf)
)
)


;***************************DEFAULT RULES*****************************


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
;Is it 10 o'clock already?[oald]
;क्या अभी से१० बज गये
;You're not leaving already, are you?[oald]
;तुम अभी से नहीं जा रहे हो, क्या तुम?
(defrule already0
(declare (salience 0))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  already.clp    already0   "  ?id "  aBI_se )" crlf)
)
)
