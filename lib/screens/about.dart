import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
	const AboutPage({
		super.key,
		required this.title,
		required this.whyTitle,
		required this.whyCopy,
		required this.whyCopy2,
		required this.source,
		required this.credits,
		required this.kanjiCredit,
		required this.kanaCredit,
		required this.references,
		required this.referencesCopy,
		required this.copyright,
		required this.copyrightCopy,
	});

	final String title;
	final String whyTitle;
	final String whyCopy;
	final String whyCopy2;
	final String source;
	final String credits;
	final String kanjiCredit;
	final String kanaCredit;
	final String references;
	final String referencesCopy;
	final String copyright;
	final String copyrightCopy;

	static const repositoryUrl = 'https://github.com/horstmannmat/nihongogame';
	static const kanjiCreditUrl = 'https://github.com/parsimonhi/animCJK';
	static const kanaCreditUrl = 'https://github.com/zhengkyl/strokesvg';
	static const referencesList = <({String name, String url})>[
		(name: 'The Kanji Map', url: 'https://thekanjimap.com/about'),
		(name: 'Jisho.org', url: 'https://jisho.org/about'),
		(name: 'Kanji alive', url: 'https://kanjialive.com/'),
	];

	Future<void> openUrl(String url) async {
		await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
	}

	@override
	Widget build(BuildContext context) {
		final theme = Theme.of(context);
		return ListView(
			padding: const EdgeInsets.all(32),
			children: [
				Text(
					title.toUpperCase(),
					style: theme.textTheme.labelMedium?.copyWith(
						letterSpacing: 3,
						color: theme.colorScheme.primary,
					),
				),
				const SizedBox(height: 12),
				Text(whyTitle, style: theme.textTheme.headlineMedium),
				const SizedBox(height: 8),
				Text(whyCopy),
				const SizedBox(height: 8),
				Text(whyCopy2),
				const SizedBox(height: 16),
				Wrap(children: [Text('$source '), _link('horstmannmat/nihongogame', repositoryUrl)]),
				const SizedBox(height: 24),
				Text(credits, style: theme.textTheme.titleLarge),
				const SizedBox(height: 8),
				Wrap(children: [Text('$kanjiCredit '), _link('parsimonhi/animCJK', kanjiCreditUrl)]),
				Wrap(children: [Text('$kanaCredit '), _link('zhengkyl/strokesvg', kanaCreditUrl)]),
				const SizedBox(height: 24),
				Text(references, style: theme.textTheme.titleLarge),
				const SizedBox(height: 8),
				Text(referencesCopy),
				...referencesList.map((reference) => ListTile(
					contentPadding: EdgeInsets.zero,
					leading: const Icon(Icons.open_in_new),
					title: Text(reference.name),
					onTap: () => openUrl(reference.url),
				)),
				const SizedBox(height: 16),
				Text(copyright, style: theme.textTheme.titleLarge),
				const SizedBox(height: 8),
				Text(copyrightCopy),
			],
		);
	}

	Widget _link(String label, String url) => TextButton(onPressed: () => openUrl(url), child: Text(label));
}
