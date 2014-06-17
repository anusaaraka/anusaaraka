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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03/04/2014
;There is not a breath of wind.[shiksharthi]
;हवा का हल्का झोंका तक नहीं है.
(defrule breath1
(declare (salience 3000))
(id-root ?id arise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-word ?id1 wind/air)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halkA_JoMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breath.clp 	breath1   "  ?id " halkA_JoMkA  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03/04/2014
;A breath of suspicion/scandal.[oald]
;संदेह / घोटाले का आभास/संकेत.
(defrule breath2
(declare (salience 3000))
(id-root ?id arise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-word ?id1 suspicion|scandal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ABAsa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breath.clp 	breath2   "  ?id " ABAsa )" crlf))
)
;*******************DEFAULT RULES********************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03/04/2014
;His breath smelt of garlic.[oald]
;उसकी सांस लहसुन की तरह महक रही थी.
(defrule breath0
(declare (salience 0))
(id-root ?id arise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAzsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breath.clp 	breath0   "  ?id " sAzsa  )" crlf))
)
