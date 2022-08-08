//
//  NewModel.swift
//  PortfolioProject (iOS)
//
//  Created by Romain Boyer on 08/08/2022.
//

import Foundation
import ObjectMapper

struct Constants {
  static let authorKey = "author"
  static let titleKey = "title"
  static let descKey = "description"
  static let urlImageKey = "urlToImage"
  static let contentKey = "content"
}

struct New: ImmutableMappable {
  let ident = UUID().uuidString
  let title: String?
  let desc: String?
  let urlToImage: String?
  let content: String?
  let author : String?

  // var img: String?

  init(map: Map) throws {
    author   = try map.value(Constants.authorKey)
    title   = try map.value(Constants.titleKey)
    desc = try? map.value(Constants.descKey)
    urlToImage = try? map.value(Constants.urlImageKey)
    content = try? map.value(Constants.contentKey)
  }
}

extension New : Identifiable {
  var id: String {
    return ident
  }


}

/*
 {
 "status": "ok",
 "totalResults": 8461,
 -"articles": [
 -{
 -"source": {
 "id": null,
 "name": "Raw Story"
 },
 "author": "Agence France-Presse",
 "title": "China spokeswoman's Taiwan restaurant tweet sparks ridicule online",
 "description": "A senior Chinese foreign ministry spokeswoman has prompted a storm of ridicule online, after a late-night tweet where she used restaurant listings to assert Beijing's claim over Taiwan.\"Baidu Maps show that there are 38 Shandong dumpling restaurants and 67 Sh…",
 "url": "https://www.rawstory.com/china-spokeswoman-s-taiwan-restaurant-tweet-sparks-ridicule-online/",
 "urlToImage": "https://www.rawstory.com/media-library/foreign-ministry-spokeswoman-hua-chunying-suggested-the-popularity-of-mainland-chinese-food-in-taiwan-proved-the-island-belonged-to-beijing-noel-celis-afp.jpg?id=30763583&width=1200&coordinates=0%2C21%2C0%2C66&height=600",
 "publishedAt": "2022-08-08T10:36:16Z",
 "content": "Whether Russian air freight firms, Saudi Arabian plane owners or others, Dan Streufert said his group gets dozens of \"requests\" each year to stop posting aircrafts' whereabouts.\r\n\"We have not removed… [+4073 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "City A.M."
 },
 "author": "Darren Parkin",
 "title": "Crypto markets lifted by strong US jobs report with Bitcoin, Ethereum and Cardano up five per cent",
 "description": "The price of Bitcoin stands at more than $24,000 this morning - up almost five per cent over the past 24 hours. \nThe post Crypto markets lifted by strong US jobs report with Bitcoin, Ethereum and Cardano up five per cent appeared first on CityAM.",
 "url": "https://www.cityam.com/crypto-markets-lifted-by-strong-us-jobs-report-with-bitcoin-ethereum-and-cardano-up-five-per-cent/",
 "urlToImage": "https://www.cityam.com/wp-content/uploads/2021/11/crypto-am-daily-5.jpeg",
 "publishedAt": "2022-08-08T10:27:41Z",
 "content": "Monday 08 August 2022 11:27 am\r\nThe Bitcoin price has again seen a strong start to the week, climbing to more than $24k today. The largest cryptocurrency by market capitalisation is changing hands fo… [+5345 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "TweakTown"
 },
 "author": "Jak Connor",
 "title": "AI asked to create an image of what death looks like",
 "description": "An artificial intelligence has been asked to produce an image of what death looks like, and it has created a few different images. Continue reading at TweakTown >",
 "url": "https://www.tweaktown.com/news/87825/ai-asked-to-create-an-image-of-what-death-looks-like/index.html",
 "urlToImage": "https://static.tweaktown.com/news/8/7/87825_25_ai-asked-to-show-an-image-of-what-death-looks-like_full.png",
 "publishedAt": "2022-08-08T10:25:02Z",
 "content": "An artificial intelligence has been asked to create an image of what death looks like, and the results are simply stunning.\r\nThe artificial intelligence (AI) that was asked to create the images seen … [+1910 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Android Headlines"
 },
 "author": "Sumit Adhikari",
 "title": "Musk Alleges Twitter Hid Information On Fake Accounts, Monetizable Users",
 "description": "Elon Musk contends the proportion of fake accounts on Twitter is more than twice the company claims. In a legal filing, the Tesla and SpaceX CEO said that over ten percent of active monetizable users on the platform aren’t real persons. They are bots or spam …",
 "url": "https://www.androidheadlines.com/2022/08/musk-alleges-twitter-hid-information-on-fake-accounts.html",
 "urlToImage": "https://www.androidheadlines.com/wp-content/uploads/2022/04/Elon-Musk-Buys-Twitter-AM-AH.jpg",
 "publishedAt": "2022-08-08T10:20:57Z",
 "content": "Tech News / Musk Alleges Twitter Hid Information On Fake Accounts, Monetizable Users\r\nElon Musk contends the proportion of fake accounts on Twitter is more than twice the company claims. In a legal f… [+2759 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNBC"
 },
 "author": "Tim Mullaney",
 "title": "The market's biggest winners and losers in the climate, health and tax bill",
 "description": "Autos and utilities are among market winners from climate incentives in the Inflation Reduction Act, but big firms from Amazon to Ford will pay more in taxes.",
 "url": "https://www.cnbc.com/2022/08/08/the-market-winners-and-losers-in-the-climate-health-and-tax-bill.html",
 "urlToImage": "https://image.cnbcfm.com/api/v1/image/107093410-B03A1498_HDR4pm.jpg?v=1658761074&w=1920&h=1080",
 "publishedAt": "2022-08-08T10:14:00Z",
 "content": "U.S. Senate Majority Leader Chuck Schumer (D-NY) walks outside the U.S. Capitol in Washington, U.S. August 2, 2022.\r\nWant to know what the Inflation Reduction Act means for the market's biggest compa… [+10872 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Biztoc.com"
 },
 "author": "postman",
 "title": "Indonesia says Tesla strikes $5 bln deal to buy nickel products - media",
 "description": "Southeast Asia's biggest economy has been trying to get Tesla to set up a production facility in the country. Indonesia has major nickel reserves. President Joko Widodo met with Tesla founder Elon... #carmaker #morowali #tesla #elonmusk #southeastasia #southk…",
 "url": "https://biztoc.com/p/jui97y6w?ref=rss",
 "urlToImage": "https://cdn.biztoc.com/og/jui97y6w.jpg",
 "publishedAt": "2022-08-08T10:11:27Z",
 "content": "Southeast Asia's biggest economy has been trying to get Tesla to set up a production facility in the country. Indonesia has major nickel reserves. President Joko Widodo met with Tesla founder Elon Mu… [+776 chars]"
 },
 -{
 -"source": {
 "id": "the-washington-post",
 "name": "The Washington Post"
 },
 "author": "Steven Mufson",
 "title": "Questions loom over impact of $369 billion in climate spending",
 "description": "Will the climate package in Congress help those who need it?  Some investments or purchases were planned even before the law's tax credits were proposed.",
 "url": "https://www.washingtonpost.com/climate-environment/2022/08/08/will-climate-package-congress-help-those-who-need-it/",
 "urlToImage": "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/VLKWW4AV7EI63BECA3A4QTHI6I.jpg&w=1440",
 "publishedAt": "2022-08-08T10:00:32Z",
 "content": "Comment on this story\r\nIn some ways, its a peculiar time for Congress to be heaping tax credits onto the electric vehicle industry.\r\nSales of electric vehicles are skyrocketing and recently hit recor… [+12815 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Electrek"
 },
 "author": "Fred Lambert",
 "title": "Tesla (TSLA) secures deal for $5 billion worth of nickel in Indonesia, says official",
 "description": "Tesla has reportedly agreed to a deal with the Indonesian government that will secure the automaker about $5 billion worth of nickel, according to a government official. In 2020, we reported on Tesla allegedly being in talks with the Indonesian government to …",
 "url": "https://electrek.co/2022/08/08/tesla-tsla-secures-deal-5-billion-worth-nickel-indonesia-official/",
 "urlToImage": "https://i0.wp.com/electrek.co/wp-content/uploads/sites/3/2020/10/nickel-pellets.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
 "publishedAt": "2022-08-08T09:58:16Z",
 "content": "Tesla has reportedly agreed to a deal with the Indonesian government that will secure the automaker about $5 billion worth of nickel, according to a government official.\r\nIn 2020, we reported on Tesl… [+2464 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Business Wire"
 },
 "author": null,
 "title": "Saudi Arabia Electric Vehicle Market Outlook 2022: Key Players Nissan, Tesla, Hyundai & Others Driving 42.5% Annual Growth - ResearchAndMarkets.com",
 "description": "DUBLIN--(BUSINESS WIRE)--The \"Saudi Arabia Electric Vehicle Market Outlook (2021-2027): Market Forecast By Vehicle Types (Two-Wheeler, Passenger Vehicle, Bus, Trucks), By Regions (Western, Southern, Eastern, Central) And Competitive Landscape\" report has been…",
 "url": "https://www.businesswire.com/news/home/20220808005327/en/Saudi-Arabia-Electric-Vehicle-Market-Outlook-2022-Key-Players-Nissan-Tesla-Hyundai-Others-Driving-42.5-Annual-Growth---ResearchAndMarkets.com",
 "urlToImage": "https://mms.businesswire.com/media/20220808005327/en/1537396/23/logo.jpg",
 "publishedAt": "2022-08-08T09:53:26Z",
 "content": "DUBLIN--(BUSINESS WIRE)--The \"Saudi Arabia Electric Vehicle Market Outlook (2021-2027): Market Forecast By Vehicle Types (Two-Wheeler, Passenger Vehicle, Bus, Trucks), By Regions (Western, Southern, … [+4875 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Seeking Alpha"
 },
 "author": "Yoel Minkoff",
 "title": "What companies are most exposed to the Inflation Reduction Act?",
 "description": "After more than 15 hours of amendments and a \"vote-a-rama\" session that stretched into Sunday afternoon, the U.S",
 "url": "https://seekingalpha.com/news/3868607-what-companies-are-most-exposed-to-the-inflation-reduction-act",
 "urlToImage": "https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1412273021/image_1412273021.jpg?io=getty-c-w750",
 "publishedAt": "2022-08-08T09:38:29Z",
 "content": "designer491/iStock via Getty Images\r\nAfter more than 15 hours of amendments and a \"vote-a-rama\" session that stretched into Sunday afternoon, the U.S. Senate narrowly passed the Inflation Reduction A… [+4047 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Hilobrow.com"
 },
 "author": "Joshua Glenn",
 "title": "RADIUM AGE: 1916",
 "description": "Year seventeen of the Radium Age",
 "url": "https://www.hilobrow.com/2022/08/08/radium-age-1916/",
 "urlToImage": null,
 "publishedAt": "2022-08-08T09:37:57Z",
 "content": "By: Joshua GlennAugust 8, 2022\r\nKazimir Malevich’s Suprematism (1916-17)\r\nA series of notes I’m calling it a “timeline,” but Kulturfahrplan might be the more apt term towards a comprehensive account … [+13787 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "FX Empire"
 },
 "author": "Reuters",
 "title": "Baidu CEO says EV arm’s autonomous driving tech will be ahead of Tesla",
 "description": "BEIJING (Reuters) -Baidu&#039;s electric vehicle (EV) firm Jidu Auto will be one-generation ahead of Tesla in terms of autonomous driving technologies, Baidu chief executive Robin Li said in a statement on Monday.",
 "url": "https://www.fxempire.com/news/article/baidu-ceo-says-ev-arms-autonomous-driving-tech-will-be-ahead-of-tesla-1089378",
 "urlToImage": "https://responsive.fxempire.com/width/600/webp-lossy-70.q50/_fxempire_/2021/10/Depositphotos_24448463_S-1-3.jpg",
 "publishedAt": "2022-08-08T09:37:09Z",
 "content": "Jidu aims to be to be able to deliver 800,000 of its robot cars in 2028, Jidu chief executive Joe Xia Yiping said in the statement. \r\nJidu also plans to deliver its second model for mass production i… [+828 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Motley Fool Australia"
 },
 "author": "James Mickleboro",
 "title": "3 ETFs for ASX investors to buy right now",
 "description": "Here are three top ETFs to consider...\nThe post 3 ETFs for ASX investors to buy right now appeared first on The Motley Fool Australia.",
 "url": "https://www.fool.com.au/2022/08/08/3-etfs-for-asx-investors-to-buy-right-now/",
 "urlToImage": "https://www.fool.com.au/wp-content/uploads/2021/04/asx-share-price-22.jpg",
 "publishedAt": "2022-08-08T09:30:00Z",
 "content": "Exchange traded funds (ETFs) can be great additions to a balanced portfolio. This is because they give investors easy access to a large and diverse number of different shares that you wouldnt ordinar… [+1656 chars]"
 },
 -{
 -"source": {
 "id": "fortune",
 "name": "Fortune"
 },
 "author": "Laura Davison, Erik Wasson, Ari Natter, Bloomberg",
 "title": "Here are the winners and losers from Democrats’ climate change and tax bill",
 "description": "The tax and energy bill passed Sunday after a year and half of rocky negotiations that divided the party. It gives Democrats tangible progress on key issues to show voters in the midterm elections this November.",
 "url": "https://fortune.com/2022/08/08/winners-losers-democrats-climate-change-tax-bill-macnhin-biden-sinema/",
 "urlToImage": "https://content.fortune.com/wp-content/uploads/2022/08/GettyImages-1242372679.jpg?resize=1200,600",
 "publishedAt": "2022-08-08T09:29:14Z",
 "content": "President Joe Biden and Senate Majority Leader Chuck Schumer are the biggest winners now that a huge piece of Democrats economic agenda is hurtling toward enactment. \r\nThe tax and energy bill passed … [+7137 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Patheos"
 },
 "author": "James F. McGrath",
 "title": "AI 2041 Panel at #SBLAAR22 (and a Conversation with #BlenderBot about Religion)",
 "description": "One of my appearances on the program of the American Academy of Religion conference in Denver in November is on a panel discussing the book AI 2041. The concept is one that immediately grabbed me: a book co-authored by a sci-fi author and a scientist, a colle…",
 "url": "https://www.patheos.com/blogs/religionprof/2022/08/ai-2041-panel-at-sblaar22.html",
 "urlToImage": "https://wp-media.patheos.com/blogs/sites/719/2022/08/BlenderBot-screenshot-8-7-2022b-Christ-Myth.png",
 "publishedAt": "2022-08-08T09:24:10Z",
 "content": "AI 2041 Panel at #SBLAAR22 (and a Conversation with #BlenderBot about Religion)August 8, 2022James F. McGrath\r\nOne of my appearances on the program of the American Academy of Religion conference in D… [+6023 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Motley Fool"
 },
 "author": "newsfeedback@fool.com (Sean Williams)",
 "title": "This Is, Hands Down, the Top Stock-Split Stock to Buy Right Now",
 "description": "Alphabet, Amazon, DexCom, Shopify, and Tesla have all announced stock splits this year -- but only one of these giants is a screaming buy.",
 "url": "https://www.fool.com/investing/2022/08/08/this-is-the-top-stock-split-stock-to-buy-right-now/",
 "urlToImage": "https://g.foolcdn.com/editorial/images/694424/paper-certificate-shares-invest-stock-split-market-reverse-getty.jpg",
 "publishedAt": "2022-08-08T09:21:00Z",
 "content": "It's been an eventful year on Wall Street. Inflation hit a four-decade high of 9.1% in June 2022, Russia invaded Ukraine and further disrupted crude oil and natural gas supply chains, and both the be… [+6535 chars]"
 },
 -{
 -"source": {
 "id": "usa-today",
 "name": "USA Today"
 },
 "author": "USA TODAY, Medora Lee, USA TODAY",
 "title": "Missing Mega Millions mania? Try prize-linked savings to party on. Here's how they work",
 "description": "If you're feeling sad the excitement of Mega Millions drawing is over, check out prized-link savings accounts. Just save, no need for winning numbers.",
 "url": "https://www.usatoday.com/story/money/personalfinance/2022/08/08/miss-mega-millions-mania-try-prized-link-savings-accounts/10247174002/",
 "urlToImage": "https://www.gannett-cdn.com/presto/2022/08/05/USAT/9c987dfa-65d1-48cc-b489-ef84350fe6c8-20211125_233549_3.jpg?auto=webp&crop=2948,1659,x0,y140&format=pjpg&width=1200",
 "publishedAt": "2022-08-08T09:00:19Z",
 "content": "Miss the thrill of potentially winning the nearly $1.34 billion Mega Millions jackpot? Prize-linked savings accounts may just be the ticket. \r\nPrize-linked savings accounts work like traditional savi… [+5201 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNET"
 },
 "author": "Antuan Goodwin",
 "title": "2023 BMW iX xDrive50 Review: Pleasing Performer, Vexing Design - CNET",
 "description": "The all-new iX gets the EV fundamentals right -- performance, range, comfort and more. So why don't I love this otherwise excellent machine?",
 "url": "https://www.cnet.com/roadshow/reviews/2023-bmw-ix-review/",
 "urlToImage": "https://www.cnet.com/a/img/resize/71ed644503748679de16ee7e434d6566677f765d/hub/2022/07/27/1d2efccd-7ec0-4b3c-81db-d61d60848b6d/bmw-ix-xdrive50-2022-732339-roadshow-ogi.jpg?auto=webp&fit=crop&height=675&width=1200",
 "publishedAt": "2022-08-08T09:00:01Z",
 "content": "The 2023 iX xDrive50 is one of two new electric vehicles BMW launched this year, alongside the i4 sedan. Of the pair, the iX xDrive50 is the bolder play: a completely new vehicle from the ground up, … [+13291 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Wattsupwiththat.com"
 },
 "author": "Guest Blogger",
 "title": "Weekly Climate and Energy News Roundup #515",
 "description": "The Week That Was: 2022-08-06 (August 6, 2022)Brought to You by SEPP (www.SEPP.org)The Science and Environmental Policy Project Quote of the Week: “A man may imagine things that are false, but he c…",
 "url": "https://wattsupwiththat.com/2022/08/08/weekly-climate-and-energy-news-roundup-515/",
 "urlToImage": "https://149366104.v2.pressablecdn.com/wp-content/uploads/2020/12/IMG_7153.jpg",
 "publishedAt": "2022-08-08T09:00:00Z",
 "content": "The Week That Was: 2022-08-06 (August 6, 2022)Brought to You by SEPP (www.SEPP.org)The Science and Environmental Policy Project\r\nQuote of the Week\r\n: A man may imagine things that are false, but he c… [+53602 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Gizchina.com"
 },
 "author": "Abdullah",
 "title": "Tesla is accused of lying about the Autopilot performance",
 "description": "The California Department of Motor Vehicles (DMV) has accused Tesla of falsely advertising its Autopilot and Full Self-Driving (FSD) features. And has therefore filed several ...\nThe post Tesla is accused of lying about the Autopilot performance appeared firs…",
 "url": "https://www.gizchina.com/2022/08/08/tesla-is-accused-of-lying-about-the-autopilot-performance/",
 "urlToImage": "https://www.gizchina.com/wp-content/uploads/images/2022/08/Tesla-Model-Y-action-1200x675.jpg",
 "publishedAt": "2022-08-08T08:58:55Z",
 "content": "The California Department of Motor Vehicles (DMV) has accused Tesla of falsely advertising its Autopilot and Full Self-Driving (FSD) features. And has therefore filed several lawsuits against the aut… [+2123 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Cointelegraph"
 },
 "author": "Cointelegraph By William Suberg",
 "title": "Has US inflation peaked? 5 things to know in Bitcoin this week",
 "description": "The latest U.S. inflation data is poised for release this week as Bitcoin price action spikes higher after a promising weekly close.",
 "url": "https://cointelegraph.com/news/has-us-inflation-peaked-5-things-to-know-in-bitcoin-this-week",
 "urlToImage": "https://images.cointelegraph.com/images/1200_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjItMDgvZDNkNjQ3MmQtNGIwZC00MDljLTk2ZmEtY2FhMDE3MjA2MWI1LmpwZw==.jpg",
 "publishedAt": "2022-08-08T08:39:06Z",
 "content": "Bitcoin (BTC) goes into another key macro week in the United States with a welcome break to the upside.\r\nAfter avoiding a now-familiar breakdown around the weekly close, BTC/USD is surging higher at … [+10105 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "NDTV News"
 },
 "author": null,
 "title": "\"Instagram A Thirst Trap\", Says Elon Musk, Admits He Has Secret Account",
 "description": "Months after moving to buy Twitter for $44 billion, Elon Musk put the deal on hold accusing the micro-blogging platform of fraud.",
 "url": "https://www.ndtv.com/world-news/instagram-a-thirst-trap-says-elon-musk-admits-he-has-secret-account-3235720",
 "urlToImage": "https://c.ndtvimg.com/2022-07/qdgfvito_elon-musk-reuters_625x300_15_July_22.jpg",
 "publishedAt": "2022-08-08T08:38:45Z",
 "content": "Elon Musk is involved in a legal battle with Twitter. (Reuters File Photo)\r\nElon Musk, the world's richest man, has admitted that he has a secret Instagram account that he uses for personal purposes.… [+1699 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Tomblomfield.com"
 },
 "author": null,
 "title": "Tom Blomfield: Monzo Growth",
 "description": "I've been asked a few times recently how we got customers to sign up to Monzo in the early years and I haven't been able to give a satisfactory answer in a sufficiently short space of time. I thought...",
 "url": "https://tomblomfield.com/post/691384431502557184/monzo-growth",
 "urlToImage": "https://64.media.tumblr.com/84e8fdd8764f98e84252d0efed70eb9a/7e365110af61ae8f-37/s1280x1920/aa0f2a8424406d12911d8d65be077177dabf558a.png",
 "publishedAt": "2022-08-08T08:36:03Z",
 "content": "Ive been asked a few times recently how we got customers to sign up to Monzo in the early years and I havent been able to give a satisfactory answer in a sufficiently short space of time. I thought I… [+32146 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNA"
 },
 "author": null,
 "title": "Baidu CEO says EV arm's autonomous driving tech will be ahead of Tesla",
 "description": "BEIJING :Baidu's electric vehicle (EV) firm Jidu Auto will be one-generation ahead of Tesla in terms of autonomous driving technologies, Baidu chief executive Robin Li said in a statement on Monday. \"Our understanding of smart vehicles is that being electric …",
 "url": "https://www.channelnewsasia.com/business/baidu-ceo-says-ev-arms-autonomous-driving-tech-will-be-ahead-tesla-2866731",
 "urlToImage": "https://onecms-res.cloudinary.com/image/upload/s--OANGLR56--/fl_relative,g_south_east,l_one-cms:core:watermark:reuters,w_0.1/f_auto,q_auto/c_fill,g_auto,h_676,w_1200/v1/one-cms/core/2022-08-08t093240z_2_lynxmpei770ac_rtroptp_3_baidu-jidu-china.jpg?itok=qCfnScCN",
 "publishedAt": "2022-08-08T08:34:11Z",
 "content": "BEIJING :Baidu's electric vehicle (EV) firm Jidu Auto will be one-generation ahead of Tesla in terms of autonomous driving technologies, Baidu chief executive Robin Li said in a statement on Monday. … [+1070 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Positivityblog.com"
 },
 "author": "Henrik Edberg",
 "title": "85 Progress Quotes to Motivate You to Keep Moving Forward Towards Your Dreams",
 "description": "Making progress towards your goals and dreams is sometimes a slow trip. It can contain pitfalls, mistakes and odd detours that you hadn’t really planned for. But to keep on going towards what you want and need in your life no matter if that's your dream job, …",
 "url": "https://www.positivityblog.com/progress-quotes/",
 "urlToImage": "https://www.positivityblog.com/wp-content/uploads/progress_quotes.jpg",
 "publishedAt": "2022-08-08T08:21:43Z",
 "content": "Making progress towards your goals and dreams is sometimes a slow trip.\r\nIt can contain pitfalls, mistakes and odd detours that you hadnt really planned for.\r\nBut to keep on going towards what you wa… [+11033 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Bitcoinist"
 },
 "author": "Jet Encila",
 "title": "Elon Musk To Twitter: Let’s Do A Public Debate On Bots!",
 "description": "Elon Musk has so many tactics he can employ to turn his back on Twitter, which filed a lawsuit against him for canceling the $44 billion contract to acquire the platform. Tactic No. 1 – Accuse the social media giant that its platform is plagued by spam bots, …",
 "url": "https://bitcoinist.com/elon-musk-to-twitter-lets-debate-about-bots/",
 "urlToImage": "https://bitcoinist.com/wp-content/uploads/2022/08/Elon-Musk-1.png",
 "publishedAt": "2022-08-08T08:21:36Z",
 "content": "Elon Musk has so many tactics he can employ to turn his back on Twitter, which filed a lawsuit against him for canceling the $44 billion contract to acquire the platform.\r\nTactic No. 1 – Accuse the s… [+2390 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Digitimes"
 },
 "author": "DIGITIMES",
 "title": "US Senate renews EV tax credit while many models likely not eligible",
 "description": "The US Senate passed the Inflation Reduction Act on August 7, which contains the renewal and improvement of an electric vehicle (EV) tax credit for US buyers. However, whether the revised tax credit will boost the country's EV market remains unknown, as many …",
 "url": "https://www.digitimes.com/news/a20220808VL204/electric-vehicle-us.html",
 "urlToImage": "https://img.digitimes.com/newsshow/20220808vl204_files/2_b.jpg",
 "publishedAt": "2022-08-08T08:08:35Z",
 "content": "The US Senate passed the Inflation Reduction Act on August 7, which contains the renewal and improvement of an electric vehicle (EV) tax credit for US buyers. However, whether the revised tax credit … [+2835 chars]"
 },
 -{
 -"source": {
 "id": "business-insider",
 "name": "Business Insider"
 },
 "author": "jerb@insider.com (Jordan Parker Erb)",
 "title": "Remote work is causing a massive shift in salaries around the country",
 "description": "The biggest story in tech right now is the \"Great Salary Convergence,\" a phenomenon that's changing how Americans get paid.",
 "url": "https://www.businessinsider.com/the-great-salary-convergence-is-changing-how-americans-get-paid-2022-8",
 "urlToImage": "https://i.insider.com/62f02bb9a69cad0019623b4b?width=1200&format=jpeg",
 "publishedAt": "2022-08-08T08:00:00Z",
 "content": "Good morning, techies. If you're living somewhere in between New York City and San Francisco (both geographically and size-wise), you may see a massive shift in how you get paid especially if you're … [+3907 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "TweakTown"
 },
 "author": "Jak Connor",
 "title": "Major Twitter flaw exposes millions of celebrity and company accounts",
 "description": "A cybersecurity expert has discovered a security flaw within Twitter that has now exposed more than 5.4 million user accounts. Continue reading at TweakTown >",
 "url": "https://www.tweaktown.com/news/87819/major-twitter-flaw-exposes-millions-of-celebrity-and-company-accounts/index.html",
 "urlToImage": "https://static.tweaktown.com/news/8/7/87819_10_major-twitter-flaw-exposes-millions-of-celebrity-and-company-accounts_full.jpg",
 "publishedAt": "2022-08-08T07:38:02Z",
 "content": "Twitter has been discovered to have a major flaw that has reportedly exposed account data of millions of users, including celebrities and companies.\r\nA cybersecurity expert that goes by the name Zhir… [+1790 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Hindustan Times"
 },
 "author": "HT Auto Desk",
 "title": "Volkswagen to buy autonomous driving tech worth $4 billion from Israel company - HT Auto",
 "description": "Volkswagen Group will use components of the technology company such as laser-based lidar sensors for its advanced driver assistance systems (ADAS) and autonomous driving vehicles from mid-decade.",
 "url": "https://auto.hindustantimes.com/auto/news/volkswagen-to-buy-autonomous-driving-tech-worth-4-billion-from-israel-company-41659933163462.html",
 "urlToImage": "https://images.hindustantimes.com/auto/img/2022/08/08/1600x900/VOLKSWAGEN-USA-1_1653976597052_1659933257769_1659933257769.JPG",
 "publishedAt": "2022-08-08T07:17:38Z",
 "content": "Volkswagen will buy self-driving software and hardware from Israels Innoviz Technologies for $4 billion. Volkswagen's CARIAD technologies group signed a deal with Innoviz that specifies that the Volk… [+1574 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Madshrimps.be"
 },
 "author": "Stefan Mileschin",
 "title": "California DMV accuses Tesla of falsely portraying its vehicles as fully autonomous",
 "description": "Tesla uses advertising language on its website for its Autopilot and Full Self-Driving products that's untrue and misleading to customers, the California DMV said. According to The Los Angeles Times and The Wall Street Journal, the agency has filed complaints…",
 "url": "http://www.madshrimps.be/news/item/216578",
 "urlToImage": null,
 "publishedAt": "2022-08-08T07:04:10Z",
 "content": "Copyright © 2001-2011 Madshrimps, All rights reserved.Graphic Design by Dennis Kestelle, Programming by Maarten Menten,\r\nOverall Site design by John Meys\r\nAll information and graphics contained in Ma… [+135 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Madshrimps.be"
 },
 "author": "Stefan Mileschin",
 "title": "The Cybertruck Will Cost Even More Now to the Surprise of Nobody",
 "description": "To the surprise of nobody, the Tesla Cybertruck will cost more money than the promised $39,900 price tag revealed back in 2019. During Teslas annual shareholder meeting, Elon Musk confirmed the bad news, saying that a lot has changed since...",
 "url": "http://www.madshrimps.be/news/item/216575",
 "urlToImage": null,
 "publishedAt": "2022-08-08T07:03:24Z",
 "content": "Copyright © 2001-2011 Madshrimps, All rights reserved.Graphic Design by Dennis Kestelle, Programming by Maarten Menten,\r\nOverall Site design by John Meys\r\nAll information and graphics contained in Ma… [+135 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNA"
 },
 "author": null,
 "title": "Indonesia says Tesla strikes $5 billion deal to buy nickel products - media",
 "description": "JAKARTA : U.S. carmaker Tesla has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told CNBC Indonesia.Southeast Asia's biggest economy has been trying to get…",
 "url": "https://www.channelnewsasia.com/business/indonesia-says-tesla-strikes-5-billion-deal-buy-nickel-products-media-2866586",
 "urlToImage": "https://onecms-res.cloudinary.com/image/upload/s--1lA2K7M6--/fl_relative,g_south_east,l_one-cms:core:watermark:reuters,w_0.1/f_auto,q_auto/c_fill,g_auto,h_676,w_1200/v1/one-cms/core/2022-08-08t064039z_2_lynxmpei7706t_rtroptp_3_tesla-results.jpg?itok=BY50pOy5",
 "publishedAt": "2022-08-08T06:40:39Z",
 "content": "JAKARTA : U.S. carmaker Tesla has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told CNBC Indon… [+1321 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNA"
 },
 "author": null,
 "title": "Indonesia says Tesla strikes US$5 billion deal to buy nickel products: Media",
 "description": "JAKARTA: US carmaker Tesla has signed contracts worth about US$5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told CNBC Indonesia. Southeast Asia's biggest economy has been trying to get…",
 "url": "https://www.channelnewsasia.com/business/indonesia-says-tesla-strikes-us5-billion-deal-buy-nickel-products-media-2866586",
 "urlToImage": "https://onecms-res.cloudinary.com/image/upload/s--1lA2K7M6--/fl_relative,g_south_east,l_one-cms:core:watermark:reuters,w_0.1/f_auto,q_auto/c_fill,g_auto,h_676,w_1200/v1/one-cms/core/2022-08-08t064039z_2_lynxmpei7706t_rtroptp_3_tesla-results.jpg?itok=BY50pOy5",
 "publishedAt": "2022-08-08T06:40:00Z",
 "content": "JAKARTA: US carmaker Tesla has signed contracts worth about US$5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told CNBC Indone… [+1328 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "FX Empire"
 },
 "author": "Reuters",
 "title": "Indonesia says Tesla strikes $5 billion deal to buy nickel products – media",
 "description": "JAKARTA (Reuters) -   U.S. carmaker Tesla has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told CNBC Indonesia.",
 "url": "https://www.fxempire.com/news/article/indonesia-says-tesla-strikes-5-billion-deal-to-buy-nickel-products-media-1089194",
 "urlToImage": "https://responsive.fxempire.com/width/600/webp-lossy-70.q50/_fxempire_/2022/08/tagreuters.com2022newsml_LYNXMPEI7706T1.jpg",
 "publishedAt": "2022-08-08T06:37:09Z",
 "content": "We are still in constant negotiation with Tesla but they have started buying two excellent products from Indonesia, Coordinating Minister for Maritime and Investment Affairs Luhut Pandjaitan said in … [+931 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "newsBTC"
 },
 "author": "Jet Encila",
 "title": "Dogecoin Unseated From No. 10 Spot In Rankings – Can DOGE Stay Relevant?",
 "description": "Dogecoin (DOGE) has been recently pushed aside by Polkadot (DOT) from the top cryptocurrencies list as it is now the 11th biggest crypto in terms of market cap. DOGE’s market value is currently at $9.28 billion after it sadly had to let go of its position whi…",
 "url": "https://www.newsbtc.com/news/dogecoin/dogecoin-unseated-from-no-10-spot/",
 "urlToImage": "https://www.newsbtc.com/wp-content/uploads/2022/08/Dogecoin.png",
 "publishedAt": "2022-08-08T06:26:24Z",
 "content": "Dogecoin (DOGE) has been recently pushed aside by Polkadot (DOT) from the top cryptocurrencies list as it is now the 11th biggest crypto in terms of market cap. DOGEs market value is currently at $9.… [+2391 chars]"
 },
 -{
 -"source": {
 "id": "the-times-of-india",
 "name": "The Times of India"
 },
 "author": "Reuters",
 "title": "Indonesia says Tesla strikes $5 billion deal to buy nickel products: Media",
 "description": "Southeast Asia's biggest economy has been trying to get Tesla to set up a production facility in the country, which has major nickel reserves. President Joko Widodo met with Tesla founder Elon Musk earlier this year to drum up investment.",
 "url": "https://economictimes.indiatimes.com/news/international/business/indonesia-says-tesla-strikes-5-billion-deal-to-buy-nickel-products-media/articleshow/93423482.cms",
 "urlToImage": "https://img.etimg.com/thumb/msid-93423577,width-1070,height-580,imgsize-18646,overlay-economictimes/photo.jpg",
 "publishedAt": "2022-08-08T06:22:54Z",
 "content": "US carmaker Tesla has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told CNBC Indonesia.\r\nSouth… [+1309 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Yahoo Entertainment"
 },
 "author": "Reuters",
 "title": "Indonesia says Tesla strikes $5 billion deal to buy nickel products - media",
 "description": "U.S. carmaker Tesla has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior ...",
 "url": "https://finance.yahoo.com/news/indonesia-says-tesla-strikes-5-062207348.html",
 "urlToImage": "https://s.yimg.com/uu/api/res/1.2/yDkxvKGD1rYg2bhR7ZxXQg--~B/aD00Mjk7dz04MDA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/reuters-finance.com/87a5031ec5e5bceaca90421774caf41d",
 "publishedAt": "2022-08-08T06:22:07Z",
 "content": "JAKARTA (Reuters) - U.S. carmaker Tesla has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told … [+1393 chars]"
 },
 -{
 -"source": {
 "id": "reuters",
 "name": "Reuters"
 },
 "author": null,
 "title": "Indonesia says Tesla strikes $5 bln deal to buy nickel products - media - Reuters",
 "description": "U.S. carmaker Tesla <a href=\"https://www.reuters.com/companies/TSLA.O\" target=\"_blank\">(TSLA.O)</a> has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told …",
 "url": "https://www.reuters.com/business/autos-transportation/indonesia-says-tesla-strikes-5-bln-deal-buy-nickel-products-media-2022-08-08/",
 "urlToImage": "https://www.reuters.com/resizer/iquuTBFWZg4I80pZdkDStk5ITQo=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/5NH4RFNQBFKCTCTVKMLLR45N24.jpg",
 "publishedAt": "2022-08-08T06:22:00Z",
 "content": "JAKARTA, Aug 8 (Reuters) - U.S. carmaker Tesla (TSLA.O) has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabine… [+1582 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Thecreativepenn.com"
 },
 "author": "Joanna Penn",
 "title": "Selling Books Direct On Shopify With Morgana Best",
 "description": "Selling your books direct to readers and listeners can bring you more money, faster, and allow you to control your customer's experience and data. Morgana Best explains why selling direct is so important for an author business, and some of her tips for implem…",
 "url": "https://www.thecreativepenn.com/2022/08/08/selling-books-direct-on-shopify-with-morgana-best/",
 "urlToImage": "https://www.thecreativepenn.com/wp-content/uploads/2022/08/sell-direct-with-morgana-best.jpg",
 "publishedAt": "2022-08-08T06:10:00Z",
 "content": "Podcast: Download (Duration: 57:36 — 46.3MB)\r\nSubscribe: Apple Podcasts | Google Podcasts | Spotify | Stitcher | TuneIn | RSS | More\r\nSelling your books direct to readers and listeners can bring you … [+31863 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "TweakTown"
 },
 "author": "Jak Connor",
 "title": "Elon Musk challenges Twitter CEO to a 'public debate' over a big issue",
 "description": "SpaceX and Tesla CEO Elon Musk has challenged Twitter CEO Parag Agrawal to a 'public debate' about the Twitter bot issue. Continue reading at TweakTown >",
 "url": "https://www.tweaktown.com/news/87816/elon-musk-challenges-twitter-ceo-to-public-debate-over-big-issue/index.html",
 "urlToImage": "https://static.tweaktown.com/news/8/7/87816_01_elon-musk-challenges-twitter-ceo-to-public-debate-over-big-issue_full.jpg",
 "publishedAt": "2022-08-08T06:04:02Z",
 "content": "Elon Musk has issued a challenge to the CEO of Twitter, Parag Agrawal, for a \"public debate\" regarding the number of bots on the platform.\r\nThe issue of the number of bots on Twitter has been the cor… [+964 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Gizmodo Australia"
 },
 "author": "Zachariah Kelly",
 "title": "The Atto 3 Is Just the Beginning: BYD Plans To Sell 9,000 Cars per Month in Australia",
 "description": "BYD, the Chinese EV company bringing cars to Australia soon, plans to sell 9,000 cars in Australia per month. \nThe post The Atto 3 Is Just the Beginning: BYD Plans To Sell 9,000 Cars per Month in Australia appeared first on Gizmodo Australia.\n\n  Related Stori…",
 "url": "https://www.gizmodo.com.au/2022/08/byd-australia/",
 "urlToImage": "https://www.gizmodo.com.au/wp-content/uploads/sites/2/2022/08/08/byd-australia.png?quality=80&resize=1280,720",
 "publishedAt": "2022-08-08T05:35:20Z",
 "content": "BYD, the Chinese electric vehicle manufacturer bringing one of Australia’s cheapest EVs to the country later this month, has revealed a very ambitious plan to sell 9,000 cars per month in the Austral… [+4261 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Business Standard"
 },
 "author": "IANS",
 "title": "'Twitter has spoken': Musk on poll over company's claim on fake users",
 "description": "A poll by Tesla CEO Elon Musk has revealed that nearly 65 per cent of his followers do not believe in Twitter's claim that less than 5 per cent of daily users are fake/spam on the platform",
 "url": "https://www.business-standard.com/article/international/twitter-has-spoken-musk-on-poll-over-company-s-claim-on-fake-users-122080800204_1.html",
 "urlToImage": "https://bsmedia.business-standard.com/_media/bs/img/article/2022-06/14/full/1655170498-3944.jpg",
 "publishedAt": "2022-08-08T05:26:00Z",
 "content": "A poll by Tesla CEO Elon Musk has revealed that nearly 65 per cent of his followers do not believe in Twitter's claim that less than 5 per cent of daily users are fake/spam on the platform.\r\nMusk, wh… [+3152 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Entrepreneur"
 },
 "author": "Jea Yu",
 "title": "Electric Vehicles Can Drive Alcoa Stock Higher",
 "description": "Global aluminum and materials products maker Alcoa (NYSE: AA) stock has fallen (-19%) for 2022. Inflationary pressures have cut into margins.",
 "url": "https://www.entrepreneur.com/article/432922",
 "urlToImage": "https://assets.entrepreneur.com/providers/marketbeat/hero-image-marketbeat-432922.jpeg",
 "publishedAt": "2022-08-08T05:24:00Z",
 "content": "<ul><li>Global aluminum and materials products maker Alcoa stock has fallen (-19%) for 2022</li><li>Shares spiked last year on optimism for the infrastructure bill, which turned out to be a sell-the-… [+4681 chars]"
 },
 -{
 -"source": {
 "id": "the-times-of-india",
 "name": "The Times of India"
 },
 "author": "IANS",
 "title": "Twitter users have 'spoken' on fake accounts: Elon Musk",
 "description": "Elon Musk, who is fighting a bitter legal battle with Twitter over the cancellation of the $44 billion takeover deal, last week began a Twitter poll among his 102.8 million followers on whether Twitter's claim of less than 5% of daily users are fake/spam.",
 "url": "https://economictimes.indiatimes.com/tech/tech-bytes/twitter-users-have-spoken-on-fake-accounts-elon-musk/articleshow/93421235.cms",
 "urlToImage": "https://img.etimg.com/thumb/msid-93421284,width-1070,height-580,imgsize-54416,overlay-ettech/photo.jpg",
 "publishedAt": "2022-08-08T04:46:05Z",
 "content": "A poll by Tesla CEO Elon Musk has revealed that nearly 65% of his followers do not believe in Twitter's claim that less than 5% of daily users are fake/spam on the platform.\r\nMusk, who is fighting a … [+1696 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "India Today"
 },
 "author": null,
 "title": "Elon Musk challenges Twitter CEO Parag Agrawal to public debate: Here's why",
 "description": "Elon Musk was replying to a fan's tweet summarising the highlights of his initial $44 billion offer to buy Twitter. Musk has backed out of the deal as he believes Twitter did not reveal correct data.",
 "url": "https://www.indiatoday.in/technology/news/story/elon-musk-challenges-twitter-ceo-parag-agrawal-to-public-debate-here-s-why-1985063-2022-08-08",
 "urlToImage": "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202208/elonmus_paragagrawal-647x363.jpeg?CzHo1G_uYaP7ica8V6MsIVgKRAAHCq.y",
 "publishedAt": "2022-08-08T04:33:33Z",
 "content": "Elon Musk is provoking Twitter CEO Parag Agrawal (yet again), but this time to a \"public debate\" over fake accounts on the platform. In multiple tweets, the billionaire Tesla CEO claimed that the soc… [+1689 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Gadgets360.com"
 },
 "author": "Associated Press",
 "title": "Elon Musk Challenges Twitter CEO Parag Agrawal to Public Debate Over Bot Users, Says Deal Cold Move Ahead",
 "description": "Elon Musk has challenged Twitter CEO Parag Agrawal to a public debate, over the percentage of bot users on Twitter. Both the microblogging platform and Musk are headed toward an October trial in a Delaware court. The Tesla CEO, who has more than 100 million T…",
 "url": "https://gadgets360.com/social-networking/news/twitter-elon-musk-challenge-public-debate-takeover-deal-bot-information-fake-accounts-3235069",
 "urlToImage": "https://i.gadgets360cdn.com/large/elon_musk_tesla_reuters_1639982416980.jpg",
 "publishedAt": "2022-08-08T04:24:17Z",
 "content": "Elon Musk said Saturday that his planned $44 billion (roughly Rs. 3.5 lakh crore) takeover of Twitter should move forward if the company can confirm some details about how it measures whether user ac… [+2002 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Designtaxi.com"
 },
 "author": "Nicole Rodrigues",
 "title": "Tesla’s Humanoid Robot ‘Optimus’ Is One Bionic Step Away From Becoming Reality",
 "description": "[Click here to view the video in this article] \nImage via Tesla\n\n \nThe age of robots may be upon us as Tesla unveils more details of its very own humanoid robot.\n \nCalled ‘Optimus’, the android robot is set to be Tesla’s newest and greatest revelation in the …",
 "url": "https://designtaxi.com/news/419810/Tesla-s-Humanoid-Robot-Optimus-Is-One-Bionic-Step-Away-From-Becoming-Reality/",
 "urlToImage": "https://editorial.designtaxi.com/images/tesla-humanoid-robot-optimus-1659927190.jpg",
 "publishedAt": "2022-08-08T04:23:32Z",
 "content": "Image via Tesla\r\nThe age of robots may be upon us as Tesla unveils more details of its very own humanoid robot.\r\nCalled ‘Optimus’, the android robot is set to be Tesla’s newest and greatest revelatio… [+1815 chars]"
 },
 -{
 -"source": {
 "id": "australian-financial-review",
 "name": "Australian Financial Review"
 },
 "author": "James Thomson",
 "title": "BHP's OZ Minerals deal makes sense. Now it's about price - The Australian Financial Review",
 "description": "Buying OZ Minerals has long made sense for BHP, which wants more exposure to copper and nickel. But the target is clearly going to put up a real fight.",
 "url": "https://www.afr.com/chanticleer/bhp-s-oz-minerals-deal-makes-sense-now-it-s-about-price-20220808-p5b83n",
 "urlToImage": "https://static.ffx.io/images/$zoom_0.7936%2C$multiply_2%2C$ratio_1.777778%2C$width_1059%2C$x_0%2C$y_0/t_crop_custom/c_scale%2Cw_800%2Cq_88%2Cf_jpg/t_afr_opinion_no_age_social_wm/66db0f1f2ddffaba38faec0db574eb7081e75955",
 "publishedAt": "2022-08-08T04:23:00Z",
 "content": "BHP has pitched its $25-a-share bid as a 41.4 per cent premium to the volume-weighted average price of OZ shares over the last 30 days.\r\nIn a surprisingly strongly worded statement (at least from a c… [+6067 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Lewrockwell.com"
 },
 "author": "No Author",
 "title": "Global Planned Financial Tsunami Has Just Begun",
 "description": "Since the creation of the US Federal Reserve over a century ago, every major financial market collapse has been deliberately triggered for political motives by the central bank. The situation is no different today, as clearly the US Fed is acting with its int…",
 "url": "https://www.lewrockwell.com/2022/08/no_author/global-planned-financial-tsunami-has-just-begun/",
 "urlToImage": "https://lrc-cdn.s3.amazonaws.com/assets/2021/02/LRC-share.jpg",
 "publishedAt": "2022-08-08T04:01:00Z",
 "content": "Since the creation of the US Federal Reserve over a century ago, every major financial market collapse has been deliberately triggered for political motives by the central bank. The situation is no d… [+13828 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Hurriyet Daily News"
 },
 "author": "hurriyetdailynews.com",
 "title": "Flight tracking exposure irks billionaires and baddies",
 "description": "How to upset Russian freight companies, Elon Musk, Chinese authorities and Kylie Jenner in one go? Track their jets.",
 "url": "https://www.hurriyetdailynews.com/flight-tracking-exposure-irks-billionaires-and-baddies-175926",
 "urlToImage": "https://i.hurimg.com/i/hdn/75/200x200/62ef6e9c4e3fe027a07fbf89.jpg",
 "publishedAt": "2022-08-08T04:00:00Z",
 "content": "WASHINGTON\r\nHow to upset Russian freight companies, Elon Musk, Chinese authorities and Kylie Jenner in one go? Track their jets.\r\nFlight following websites and Twitter accounts offer real-time views … [+3350 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "China.org.cn"
 },
 "author": "张军棉",
 "title": "Chinese marques lead NEV fast lane",
 "description": "New energy vehicles or NEVs are hitting the fast lane in China, and the sector is expected to help the country's carmakers to overtake international rivals, analysts said.",
 "url": "http://www.china.org.cn/business/2022-08/08/content_78361814.htm",
 "urlToImage": null,
 "publishedAt": "2022-08-08T04:00:00Z",
 "content": "New energy vehicles or NEVs are hitting the fast lane in China, and the sector is expected to help the country's carmakers to overtake international rivals, analysts said.\r\nIn June, sales of electric… [+2992 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Business Today"
 },
 "author": "Associated Press",
 "title": "$44 bn Twitter takeover bid could move ahead with 'bot' info: Musk",
 "description": "The billionaire and Tesla CEO has been trying to back out of his April agreement to buy the social media company, leading Twitter to sue him last month to complete the acquisition.",
 "url": "https://www.businesstoday.in/latest/world/story/44-bn-twitter-takeover-bid-could-move-ahead-with-bot-info-musk-344003-2022-08-08",
 "urlToImage": "https://akm-img-a-in.tosshub.com/businesstoday/images/story/202208/twitter-1-sixteen_nine.jpg",
 "publishedAt": "2022-08-08T03:13:28Z",
 "content": "Elon Musk said Saturday his planned $44 billion takeover of Twitter should move forward if the company can confirm some details about how it measures whether user accounts are spam bots or real peopl… [+1992 chars]"
 },
 -{
 -"source": {
 "id": "australian-financial-review",
 "name": "Australian Financial Review"
 },
 "author": "Laura Davison, Erik Wasson, Ari Natter",
 "title": "The winners and losers in the landmark US tax and energy bill - The Australian Financial Review",
 "description": "President Joe Biden and Senate Majority Leader Chuck Schumer are the biggest beneficiaries from the new legislation while drug companies and tech giants are set to lose out.",
 "url": "https://www.afr.com/world/north-america/the-winners-and-losers-in-the-landmark-us-tax-and-energy-bill-20220808-p5b85a",
 "urlToImage": "https://static.ffx.io/images/$zoom_0.6161%2C$multiply_2%2C$ratio_1.777778%2C$width_1059%2C$x_34%2C$y_0/t_crop_custom/c_scale%2Cw_800%2Cq_88%2Cf_jpg/t_afr_no_label_no_age_social_wm/84f178c3d213a3191d8fd56e108e20306a75593b",
 "publishedAt": "2022-08-08T03:12:00Z",
 "content": "Electric Carmakers: The deal extends a popular $US7,500 per vehicle consumer tax credit for the purchase of electric vehicles, a win for EV makers like General Motors, Tesla and Toyota. But to win th… [+4251 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Sky News Australia"
 },
 "author": "",
 "title": "Robotaxi will work universally like Uber: Elon Musk",
 "description": "Tesla CEO Elon Musk has predicted his newest company project “robotaxi” will work universally like Uber and Airbnb.\n\n“I think it would end up being some kind of combination of like Airbnb and Uber,” Mr Musk told shareholders.\n\nElon Musk confirmed at the annua…",
 "url": "https://www.skynews.com.au/business/robotaxi-will-work-universally-like-uber-elon-musk/video/30a04d5d226c3c15abbcaf96b5d80bf3",
 "urlToImage": "https://content.api.news/v3/images/bin/3f16125e35b0a28405a8997e54dd8fbe",
 "publishedAt": "2022-08-08T03:01:07Z",
 "content": "Tesla CEO Elon Musk has predicted his newest company project “robotaxi” will work universally like Uber and Airbnb.\r\n“I think it would end up being some kind of combination of like Airbnb and Uber,” … [+476 chars]"
 },
 -{
 -"source": {
 "id": "the-times-of-india",
 "name": "The Times of India"
 },
 "author": "ETMarkets.com",
 "title": "SGX Nifty down 45 points; here's what changed for market while you were sleeping - Economic Times",
 "description": "<ol><li>SGX Nifty down 45 points; here's what changed for market while you were sleeping  Economic Times\r\n</li><li>Latest Market Trends & Key Sectors & Stocks To Watch Out For Today | Bazaar Corporate Radar  CNBC-TV18\r\n</li><li>Stock Market Today: Top 10 thin…",
 "url": "https://economictimes.indiatimes.com/markets/stocks/news/sgx-nifty-down-45-points-heres-what-changed-for-market-while-you-were-sleeping/articleshow/93418515.cms",
 "urlToImage": "https://img.etimg.com/thumb/msid-93418574,width-1070,height-580,imgsize-80439,overlay-etmarkets/photo.jpg",
 "publishedAt": "2022-08-08T02:32:00Z",
 "content": "Domestic equity markets are set to kick off the week on a muted note amid mixed cues from global peers. US stocks settled mixed over the weekend trade, whereas Asian peers were range-bound. Traders w… [+4109 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Forbes"
 },
 "author": "Brad Templeton, Senior Contributor, \n Brad Templeton, Senior Contributor\n https://www.forbes.com/sites/bradtempleton/",
 "title": "Baidu Begins Paid Robotaxi Service In China With No Employee Aboard",
 "description": "Baidu has announced they have received permits to operate a paid Robotaxi service in China, with no human safety driver aboard the vehicle.  This shows they are confident in their vehicle",
 "url": "https://www.forbes.com/sites/bradtempleton/2022/08/07/baidu-begins-paid-robotaxi-service-in-china-with-no-employee-aboard/",
 "urlToImage": "https://imageio.forbes.com/specials-images/imageserve/62f025590d7cf4ad07d408c6/0x0.jpg?format=jpg&width=1200",
 "publishedAt": "2022-08-08T02:00:46Z",
 "content": "A Baidu Apollo Robotaxi travels with no safety driver in the vehicle in China\r\nBaidu\r\nBaiduBIDU\r\n has announced they have received permits to operate a paid Robotaxi service in China, with no human s… [+4652 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Business Standard"
 },
 "author": "Laura Davison | Bloomberg",
 "title": "Here's what to expect from Senate's tax, climate and healthcare bill",
 "description": "After more than a year of stop-and-start negotiations, Democrats on Sunday agreed to a narrow bill to invest in energy initiatives, curb drug prices and reduce the deficit",
 "url": "https://www.business-standard.com/article/international/here-s-what-to-expect-from-senate-s-tax-climate-and-healthcare-bill-122080800107_1.html",
 "urlToImage": "https://bsmedia.business-standard.com/_media/bs/img/article/2018-01/20/full/1516435054-7091.jpg",
 "publishedAt": "2022-08-08T01:59:00Z",
 "content": "The Senate passed Democrats’ landmark tax, climate and healthcare bill, setting up the legislation for House approval and President Joe Biden’s signature.\r\nAfter more than a year of stop-and-start ne… [+5033 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Daily Mail"
 },
 "author": "Charlie Moore",
 "title": "New push to ban petrol cars in Australia in just 12 years",
 "description": "The Electric Vehicle Council is pushing for every state and territory to adopt mandated electric car sales targets.",
 "url": "https://www.dailymail.co.uk/news/article-11090203/New-push-ban-petrol-cars-Australia-just-12-years.html",
 "urlToImage": "https://i.dailymail.co.uk/1s/2022/08/08/01/61162935-0-image-a-10_1659917366958.jpg",
 "publishedAt": "2022-08-08T01:39:20Z",
 "content": "Australians should be banned from buying new fossil-fuel powered cars within just 12 years, according to the lobby group that represents the electric vehicle industry, in a proposal that has been sla… [+6381 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Moneycontrol"
 },
 "author": "Sandip Das",
 "title": "Stock Market Today: Top 10 things to know before the market opens today - Moneycontrol",
 "description": "<ol><li>Stock Market Today: Top 10 things to know before the market opens today  Moneycontrol\r\n</li><li>Ahead of Market: 10 things that will decide D-Street action on Monday  Economic Times\r\n</li><li>Trade setup for Monday: Nifty call put ratio to SGX Nifty t…",
 "url": "https://www.moneycontrol.com/news/business/markets/stock-market-today-top-10-things-to-know-before-the-market-opens-today-49-8973601.html",
 "urlToImage": "https://images.moneycontrol.com/static-mcnews/2022/07/SensexBSENSE-770x433.jpg",
 "publishedAt": "2022-08-08T01:23:35Z",
 "content": "The market is expected to open in the red as trends in SGX Nifty indicate a negative opening for the broader index in India with a loss of 83 points.\r\nThe BSE Sensex rose 89 points to 58,388, while t… [+5614 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Seeking Alpha"
 },
 "author": "Nick Ackerman",
 "title": "NFJ: A Covered Call Hybrid Approach",
 "description": "Virtus AllianzGI Dividend Interest & Premium Strategy Fund offers a fairly unique approach to the covered call strategy. See why I feel NFJ CEF is interesting.",
 "url": "https://seekingalpha.com/article/4531312-nfj-a-covered-call-hybrid-approach",
 "urlToImage": "https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1322479796/image_1322479796.jpg?io=getty-c-w750",
 "publishedAt": "2022-08-08T01:18:40Z",
 "content": "Lemon_tm\r\nWritten by Nick Ackerman, co-produced by Stanford Chemist. This article was originally published to members of the CEF/ETF Income Laboratory on July 23rd, 2022.\r\n Virtus AllianzGI Dividend … [+10563 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Biztoc.com"
 },
 "author": "moneytree",
 "title": "As Tesla Prepares To Split Shares, Here's How Much $1,000 Invested Ahead Of August 2020 Stock Split Is Wo",
 "description": "Tesla, Inc. confirmed a 3:1 stock split through a press release late Friday, following approval by shareholders at the annual meeting held on Thursday. The split is implemented as a stock... #stocksplit #tesla",
 "url": "https://biztoc.com/p/ajf4mm6t?ref=rss",
 "urlToImage": "https://cdn.biztoc.com/og/ajf4mm6t.jpg",
 "publishedAt": "2022-08-08T01:01:27Z",
 "content": "Tesla, Inc. confirmed a 3:1 stock split through a press release late Friday, following approval by shareholders at the annual meeting held on Thursday. The split is implemented as a stock dividend, w… [+1265 chars]"
 },
 -{
 -"source": {
 "id": "abc-news-au",
 "name": "ABC News (AU)"
 },
 "author": "Sue Lannin",
 "title": "Oz Minerals rejects BHP takeover bid",
 "description": "Copper and nickel miner Oz Minerals rebuffs an $8.3 billion takeover bid from BHP, while the Australian share market opens in the red.",
 "url": "https://www.abc.net.au/news/2022-08-08/asx-wallstreet-markets-currencies-commodities/101310204",
 "urlToImage": "https://live-production.wcms.abc-cdn.net.au/b6bcbf2caa63e400438bcab8e4cd593e?impolicy=wcms_crop_resize&cropH=2802&cropW=4981&xPos=0&yPos=55&width=862&height=485",
 "publishedAt": "2022-08-08T00:58:59Z",
 "content": "Miner Oz Minerals has rejected a takeover bid from mining giant BHP, and the Australian share market has fallen in the first hour of trade. \r\nKey points:\r\n<ul><li>The All Ordinaries Index was down 0.… [+2404 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Activistpost.com"
 },
 "author": "Activist Post",
 "title": "New Federal Investigation into 2 Recent Deadly Accidents Involving Teslas “apparently running on Autopilot”",
 "description": "By B.N. Frank Tesla vehicles have been and continue to be associated with numerous significant security (see 1, 2, 3) and safety issues, some of...\nNew Federal Investigation into 2 Recent Deadly Accidents Involving Teslas “apparently running on Autopilot”",
 "url": "https://www.activistpost.com/2022/08/new-federal-investigation-into-2-recent-deadly-accidents-involving-teslas-apparently-running-on-autopilot.html",
 "urlToImage": "https://www.activistpost.com/wp-content/uploads/2022/01/Automated-Vehicles-More-Trouble.jpg",
 "publishedAt": "2022-08-08T00:49:14Z",
 "content": "By B.N. Frank\r\nTesla vehicles have been and continue to be associated with numerous significant security (see 1, 2, 3) and safety issues, some of which have led to accidents, lawsuits, recalls, and f… [+4182 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Drive.com.au"
 },
 "author": "Ben Zachariah",
 "title": "Tesla setting up to overtake Toyota as the world’s largest carmaker",
 "description": "Elon Musk says Tesla is working towards a production of 20 million new cars annually – which, if all sold, would be twice the sales figures of the world’s",
 "url": "https://www.drive.com.au/news/tesla-to-overtake-toyota-as-worlds-largest-carmaker/",
 "urlToImage": "https://images.drive.com.au/driveau/image/upload/c_fill,h_720,w_1280/q_auto:eco/f_auto/v1/cms/uploads/uihaqvlfrehokcuj2xzn",
 "publishedAt": "2022-08-08T00:44:05Z",
 "content": "Musk said the companys two newest plants, located in Germany and Texas, were working through solving 10,000 small problems, despite both enjoying a run rate of 1.5 million cars."
 },
 -{
 -"source": {
 "id": null,
 "name": "Daily Mail"
 },
 "author": "Ashleigh Gray",
 "title": "Addison Rae shows off her fit legs in short shorts as she steps out with boyfriend Omer Fedi in LA",
 "description": "Addison Rae wore a pair of shrunken athletic shorts as she stepped out in Los Angeles. She showed off her toned legs in the lime green shorts, which she teams with a darker green t-shirt.",
 "url": "https://www.dailymail.co.uk/tvshowbiz/article-11090329/Addison-Rae-shows-fit-legs-short-shorts-steps-boyfriend-Omer-Fedi-LA.html",
 "urlToImage": "https://i.dailymail.co.uk/1s/2022/08/08/00/61161969-0-image-a-45_1659914918203.jpg",
 "publishedAt": "2022-08-08T00:27:48Z",
 "content": "Addison Rae wore a pair of shrunken athletic shorts as she stepped out in Los Angeles on Sunday.\r\nThe 21-year-old internet sensation showed off her toned legs in the lime green shorts, which she team… [+2972 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Slashdot.org"
 },
 "author": "feedfeeder",
 "title": "Tesla Accused of Falsely Advertising Autopilot and Self-Driving Features - CNET",
 "description": "California's DMV accuses the automaker of exaggerating the technologies' capabilities.",
 "url": "https://slashdot.org/firehose.pl?op=view&amp;id=165164992",
 "urlToImage": null,
 "publishedAt": "2022-08-08T00:12:33Z",
 "content": "When some people discover the truth, they just can't understand why\r\neverybody isn't eager to hear it."
 },
 -{
 -"source": {
 "id": null,
 "name": "Biztoc.com"
 },
 "author": "alphaman",
 "title": "Auto lobby group worries that most U.S. EVs disqualified for EV tax credit",
 "description": "Alliance for Automotive Innovation says U.S. automakers won’t qualify for the full credit. The lobby group represents General Motors, Toyota, and Ford Motor as well as a few other automakers. John... #johnbozzella #batterymineralsupplier #phasein #generalmoto…",
 "url": "https://biztoc.com/p/ztpt9jzm?ref=rss",
 "urlToImage": "https://cdn.biztoc.com/og/ztpt9jzm.jpg",
 "publishedAt": "2022-08-08T00:01:29Z",
 "content": "Alliance for Automotive Innovation says U.S. automakers wont qualify for the full credit. The lobby group represents General Motors, Toyota, and Ford Motor as well as a few other automakers. John Boz… [+1226 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Tech Times"
 },
 "author": "Isaiah Richard",
 "title": "Elon Musk Challenges Twitter CEO Parag Agrawal on Public Debate Regarding Bot Count",
 "description": "The online world is awaiting the modern-day 'Clash of the Titans' with tech CEOs' debate.",
 "url": "https://www.techtimes.com/articles/278897/20220807/elon-musk-challenges-twitter-ceo-parag-agrawal-public-debate-regarding.htm",
 "urlToImage": "https://1734811051.rsc.cdn77.org/data/images/full/407366/tesla-employee-attendance-now-being-observed-workers-now-complain-saying-its-controlling.jpg",
 "publishedAt": "2022-08-07T23:51:41Z",
 "content": "Elon Musk officially challenged the current Twitter CEO, Parag Agrawal, into a public debate, and the tech moguls would talk about the bot count percentage of the social media platform. \r\nIt is a hig… [+3658 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Daily Mail"
 },
 "author": "Sam McPhee",
 "title": "How Australia will cope WITHOUT petrol or diesel cars",
 "description": "Australia is 'lagging behind the rest of the world' and will need '100 times' the infrastructure it currently has if it is to ban all petrol cars for electric - but experts say it could become a 'superpower'.",
 "url": "https://www.dailymail.co.uk/news/article-11029841/How-Australia-cope-WITHOUT-petrol-diesel-cars.html",
 "urlToImage": "https://i.dailymail.co.uk/1s/2022/07/21/07/60522455-0-image-a-36_1658385619588.jpg",
 "publishedAt": "2022-08-07T23:47:35Z",
 "content": "Australia's push to zero-emission roads by 2035 demands billions of dollars in investment, consistent cooperation by the government, and a change in attitude from motorists.\r\nThe ACT became the first… [+11795 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Gizmodo Australia"
 },
 "author": "Zachariah Kelly",
 "title": "If Australia Had Implemented Fuel Efficiency Standards We Would’ve Saved $6 Billion in Fuel Costs by Now",
 "description": "The Australian Institute has released a report outlining that $5.9 billion in fuel costs could have been saved if fuel efficiency standards were adopted in 2015.\nThe post If Australia Had Implemented Fuel Efficiency Standards We Would’ve Saved $6 Billion in F…",
 "url": "https://www.gizmodo.com.au/2022/08/fuel-efficiency-standards/",
 "urlToImage": "https://www.gizmodo.com.au/wp-content/uploads/sites/2/2022/08/08/fuel-efficiency-standards.png?quality=80&resize=1280,720",
 "publishedAt": "2022-08-07T23:42:54Z",
 "content": "The Australian Institute has released a report outlining that $5.9 billion in fuel costs could have been saved if fuel efficiency standards were adopted in 2015.\r\nThe report comes as the think tank i… [+6441 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Catchpoint.com"
 },
 "author": "Mehdi Daoudi",
 "title": "Monitoring at the Edge of the Third Act of the Internet",
 "description": "Whether you’re in tech, media, retail, or any other business with or without a digital presence, the biggest challenge you are facing is how to deliver something to the last mile. If I own a grocery store, while it’s easy for me to have a big warehouse where …",
 "url": "https://www.catchpoint.com/blog/edge-monitoring",
 "urlToImage": "https://dz2cdn3.dzone.com/storage/article-thumb/16109310-thumb.jpg",
 "publishedAt": "2022-08-07T23:33:18Z",
 "content": "Whether youre in tech, media, retail, or any other business with or without a digital presence, the biggest challenge you are facing is how to deliver something to the last mile. If I own a grocery s… [+9591 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Insurance Journal"
 },
 "author": "Admin",
 "title": "U.S. Agency Probes Tesla Crashes That Killed 2 Motorcyclists",
 "description": "Two crashes involving Teslas apparently running on Autopilot are drawing scrutiny from federal regulators and point to a potential new hazard on U.S. freeways: The partially automated vehicles may not stop for motorcycles. The National Highway Traffic Safety …",
 "url": "https://www.insurancejournal.com/news/midwest/2022/08/07/679062.htm",
 "urlToImage": null,
 "publishedAt": "2022-08-07T23:21:46Z",
 "content": "Two crashes involving Teslas apparently running on Autopilot are drawing scrutiny from federal regulators and point to a potential new hazard on U.S. freeways: The partially automated vehicles may no… [+4627 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Seclists.org"
 },
 "author": null,
 "title": "Risks Digest 33.37",
 "description": "Posted by RISKS List Owner on Aug 07RISKS-LIST: Risks-Forum Digest Sunday 7 August 2022 Volume 33 : Issue 37\n\nACM FORUM ON RISKS TO THE PUBLIC IN COMPUTERS AND RELATED SYSTEMS (comp.risks)\nPeter G. Neumann, founder and still moderator\n\n***** See last item for…",
 "url": "https://seclists.org/risks/2022/q3/6",
 "urlToImage": "https://seclists.org/images/risks-img.png",
 "publishedAt": "2022-08-07T23:01:52Z",
 "content": "From: RISKS List Owner &lt;risko () csl sri com&gt;Date: Sun, 7 Aug 2022 15:45:41 PDT\r\nRISKS-LIST: Risks-Forum Digest Sunday 7 August 2022 Volume 33 : Issue 37\r\nACM FORUM ON RISKS TO THE PUBLIC IN CO… [+44662 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNET"
 },
 "author": "Steven Musil",
 "title": "Tesla Accused of Falsely Advertising Autopilot and Self-Driving Features - CNET",
 "description": "California's DMV accuses the automaker of exaggerating the technologies' capabilities.",
 "url": "https://www.cnet.com/roadshow/news/tesla-accused-of-falsely-advertising-autopilot-and-self-driving-features/",
 "urlToImage": "https://www.cnet.com/a/img/resize/4954d0695db303430f030fc0f4480c1a4dadedad/2021/08/27/d458a3d5-531c-488d-aca5-5c4f1afcab61/2021-tesla-model-y-03.jpg?auto=webp&fit=crop&height=630&width=1200",
 "publishedAt": "2022-08-07T23:01:00Z",
 "content": "Tesla has been accused by California's Department of Motor Vehicles of false advertising in promoting its Autopilot and Full Self-Driving features as providing autonomous vehicle control.\r\nThe DMV al… [+1885 chars]"
 },
 -{
 -"source": {
 "id": "marca",
 "name": "Marca"
 },
 "author": "LW",
 "title": "Elon Musk urges President Joe Biden to help Brittney Griner come back home",
 "description": "Elon Musk was recently interviewed and appeared in the Full Send podcast where he addressed different subjects, including the Brittney Griner sentence in Russia, to which he urged",
 "url": "https://www.marca.com/en/lifestyle/celebrities/2022/08/08/62f042f622601def568b4577.html",
 "urlToImage": "https://phantom-marca.unidadeditorial.es/81c973eb08107b590bd2f2d7dee9da9e/resize/1200/f/jpg/assets/multimedia/imagenes/2022/08/08/16599127657087.jpg",
 "publishedAt": "2022-08-07T22:56:14Z",
 "content": "Elon Musk was recently interviewed and appeared in the Full Send podcast where he addressed different subjects, including the Brittney Griner sentence in Russia, to which he urged President Biden and… [+1803 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Yakimaherald.com"
 },
 "author": "AP",
 "title": "AP Business SummaryBrief at 6:49 p.m. EDT | Business | yakimaherald.com - Yakima Herald-Republic",
 "description": "AP Business SummaryBrief at 6:49 p.m. EDT | Business | yakimaherald.com  Yakima Herald-Republic",
 "url": "https://www.yakimaherald.com/ap/business/ap-business-summarybrief-at-6-49-p-m-edt/article_da352597-bcab-5e74-96df-f2c7ae1010af.html",
 "urlToImage": "https://bloximages.newyork1.vip.townnews.com/yakimaherald.com/content/tncms/custom/image/3ba940a6-308d-11e8-b344-9ffa8cb1a12c.png?resize=600%2C315",
 "publishedAt": "2022-08-07T22:49:06Z",
 "content": "Senate Democrats pass budget package, a victory for Biden\r\nWASHINGTON (AP) The Senate has approved Democrats' big election-year economic package. The legislation is less ambitious than President Joe … [+7032 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Motley Fool Australia"
 },
 "author": "Tristan Harrison",
 "title": "Is the Vanguard MSCI International ETF (VGS) a good alternative to global tech shares?",
 "description": "Should investors think about the VGS ETF for its tech exposure?\nThe post Is the Vanguard MSCI International ETF (VGS) a good alternative to global tech shares? appeared first on The Motley Fool Australia.",
 "url": "https://www.fool.com.au/2022/08/08/is-the-vanguard-msci-international-etf-vgs-a-good-alternative-to-global-tech-shares/",
 "urlToImage": "https://www.fool.com.au/wp-content/uploads/2021/12/investor.jpg",
 "publishedAt": "2022-08-07T22:29:34Z",
 "content": "The Vanguard MSCI Index International Shares ETF(ASX: VGS) is one of the most popular exchange-traded funds (ETFs) with a fund size of more than $4.4 billion.\r\nIt may also provide an alternative to i… [+4087 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Erickimphotography.com"
 },
 "author": "ERIC KIM",
 "title": "I HATE WAITING",
 "description": "My hatred of slowness with technology. Also why I would never wait in line for food. Or why I hate waiting in line for gym equipment. Also, why I would probably hate having a Tesla — having to wait for it to charge!",
 "url": "https://erickimphotography.com/blog/2022/08/07/i-hate-waiting/",
 "urlToImage": "https://i0.wp.com/erickimphotography.com/blog/wp-content/uploads/2021/11/cropped-selfie-ERIC-KIM-crimson-red-glitch.jpg?fit=512%2C512&ssl=1",
 "publishedAt": "2022-08-07T22:23:14Z",
 "content": "My hatred of slowness with technology. Also why I would never wait in line for food. Or why I hate waiting in line for gym equipment.\r\nAlso, why I would probably hate having a Tesla having to wait fo… [+14 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Biztoc.com"
 },
 "author": "alphaman",
 "title": "Elon Musk Claims Twitter Committed Fraud In $44 Billion Deal Countersuit",
 "description": "Tesla and SpaceX CEO Elon Musk and his legal counsels are alleging in a recent filing that Twitter hoodwinked them. Musk offered to purchase Twitter earlier this year, but changed his mind and... #dogefather #billionairecomments #spacex #tesla #twitter #elonm…",
 "url": "https://biztoc.com/p/d6p3esvj?ref=rss",
 "urlToImage": "https://cdn.biztoc.com/og/d6p3esvj.jpg",
 "publishedAt": "2022-08-07T22:11:31Z",
 "content": "Tesla and SpaceX CEO Elon Musk and his legal counsels are alleging in a recent filing that Twitter hoodwinked them. Musk offered to purchase Twitter earlier this year, but changed his mind and attemp… [+859 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Gizmodo Australia"
 },
 "author": "Mack DeGeurin",
 "title": "The 12 Biggest Tech Layoffs of the Year… So Far",
 "description": "Tens of thousands of tech employees in jobs previously thought to be secure and high-paying have had to pack their...\nThe post The 12 Biggest Tech Layoffs of the Year… So Far appeared first on Gizmodo Australia.\n  Related Stories\r\n<ul><li>The 12 Biggest Tech …",
 "url": "https://www.gizmodo.com.au/2022/08/the-12-biggest-tech-layoffs-of-the-year-so-far/",
 "urlToImage": "https://www.gizmodo.com.au/wp-content/uploads/sites/2/2022/08/05/a0ab1fc48131350ab50bc7c4bb611aea.jpg?quality=80&resize=1280,720",
 "publishedAt": "2022-08-07T22:08:00Z",
 "content": "Tens of thousands of tech employees in jobs previously thought to be secure and high-paying have had to pack their bags in recent months. Theyre seeking out new positions as a downturn in the wider e… [+9755 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Biztoc.com"
 },
 "author": "wagmi",
 "title": "Buffer or bet against? Here are some new strategies for single-stock ETFs",
 "description": "Single-stock ETFs allow investors a leveraged or short position in a particular stock. Innovator launched its Hedged TSLA Strategy ETF (TSLH) on July 26. It acts as a buffer by providing the price... #pfizer #tslq #wallachbethcapital #slavin #tesla #andrewmco…",
 "url": "https://biztoc.com/p/vvynfpzm?ref=rss",
 "urlToImage": "https://cdn.biztoc.com/og/vvynfpzm.jpg",
 "publishedAt": "2022-08-07T22:01:28Z",
 "content": "Single-stock ETFs allow investors a leveraged or short position in a particular stock. Innovator launched its Hedged TSLA Strategy ETF (TSLH) on July 26. It acts as a buffer by providing the price re… [+935 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Bangkok Post"
 },
 "author": "Pattama Kuentak",
 "title": "Green recovery",
 "description": "As the world emerges from Covid-19 and faces stagflation and war, climate crisis remains one of the greatest threats to humanity. A green recovery has become a priority for policymakers in Southeast Asia and around the world, who aim to create a more sustaina…",
 "url": "https://www.bangkokpost.com/business/2363576/green-recovery",
 "urlToImage": "https://static.bangkokpost.com/media/content/20220808/c1_2363576_220808103013_700.jpg",
 "publishedAt": "2022-08-07T21:30:00Z",
 "content": "As the world emerges from Covid-19 and faces stagflation and war, climate crisis remains one of the greatest threats to humanity. A green recovery has become a priority for policymakers in Southeast … [+11527 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Bangkok Post"
 },
 "author": "Nora Eckert",
 "title": "At Ford, Quality Is Now Problem 1",
 "description": "Josh Halliburton joined Ford Motor Co. in January to help improve its shaky quality record. Within months it was clear how big a challenge he faced.",
 "url": "https://www.bangkokpost.com/business/2363536/at-ford-quality-is-now-problem-1",
 "urlToImage": "https://static.bangkokpost.com/media/content/dcx/2022/08/08/4398071_700.jpg",
 "publishedAt": "2022-08-07T21:30:00Z",
 "content": "Josh Halliburton joined Ford Motor Co. in January to help improve its shaky quality record. Within months it was clear how big a challenge he faced.\r\nIn May, the auto giant recalled some Ford Expedit… [+8339 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Electrek"
 },
 "author": "Jameson Dow",
 "title": "Senate improves EV tax credit in largest climate bill ever",
 "description": "The new electric car tax credit is easier to claim and extended to 2032 to US-built EVs, along with a new $4,000 credit on used EVs.",
 "url": "https://electrek.co/2022/08/07/senate-improves-ev-tax-credit-in-largest-climate-bill-ever/",
 "urlToImage": "https://i0.wp.com/electrek.co/wp-content/uploads/sites/3/2021/12/Congress.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
 "publishedAt": "2022-08-07T21:16:53Z",
 "content": "The Senate has voted to pass the Inflation Reduction Act, which includes nearly $400 billion over 10 years in funding for climate and energy related programs, and an extension and improvement of the … [+8493 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Cointelegraph"
 },
 "author": "Cointelegraph By Sritanshu Sinha",
 "title": "How Bitcoin whales make a splash in markets and move prices",
 "description": "Critics of the crypto ecosystem say that whales make this space centralized, maybe even more centralized than the traditional financial markets.",
 "url": "https://cointelegraph.com/news/how-bitcoin-whales-make-a-splash-in-markets-and-move-prices",
 "urlToImage": "https://images.cointelegraph.com/images/1200_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjItMDgvZTg0ZTVlMjEtYTllZi00NThjLTkwZDgtNzM0NjYwY2JkZmFhLmpwZw==.jpg",
 "publishedAt": "2022-08-07T21:12:00Z",
 "content": "Deriving their names from the size of the massive mammals swimming around the earths oceans, cryptocurrency whales refer to individuals or entities that hold large amounts of cryptocurrency. \r\nIn the… [+8534 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Screen Rant"
 },
 "author": "Michael Akuchie",
 "title": "What Is The Tesla Flying Car And Can You Buy One? | Screen Rant",
 "description": "The production of the Jetson One with other flying vehicle prototypes opens a new world of possibilities for air travel and transportation in general.",
 "url": "https://screenrant.com/tesla-flying-car-what-buy-can/",
 "urlToImage": "https://static1.srcdn.com/wordpress/wp-content/uploads/2022/08/Jetson-One.jpg",
 "publishedAt": "2022-08-07T21:02:41Z",
 "content": "Word about a Tesla flying car has started making the rounds. However, the car isn't a Tesla, but the Jetson One, a flying car that's already garnered plenty of pre-orders and doesn't need a license o… [+3511 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Yahoo Entertainment"
 },
 "author": "Erik Wasson, Steven T. Dennis and Laura Davison",
 "title": "Senate Passes Democrats’ Landmark Tax, Climate, Drugs Bill",
 "description": "(Bloomberg) -- The Senate passed a landmark tax, climate and health-care bill, speeding a slimmed-down version of President Joe Biden’s domestic agenda on a ...",
 "url": "https://finance.yahoo.com/news/senate-passes-democrats-landmark-tax-202813980.html",
 "urlToImage": "https://s.yimg.com/ny/api/res/1.2/8Rtd5gv_AxzGEyEp4_wojA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/uu/api/res/1.2/L5JO3xCWsc12Qqh4YUjR6A--~B/aD0xMzMzO3c9MjAwMDthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/bloomberg_politics_602/13981258e42d4b442ec29df9af4860da",
 "publishedAt": "2022-08-07T20:28:13Z",
 "content": "(Bloomberg) -- The Senate passed a landmark tax, climate and health-care bill, speeding a slimmed-down version of President Joe Bidens domestic agenda on a path to becoming law after a year of Democr… [+6305 chars]"
 },
 -{
 -"source": {
 "id": "breitbart-news",
 "name": "Breitbart News"
 },
 "author": "Lucas Nolan, Lucas Nolan",
 "title": "'Hide and Seek:' Elon Musk's Countersuit Accuses Twitter of Evading 'Simple Requests'",
 "description": "Tesla CEO Elon Musk's countersuit against Twitter was revealed on Friday, making aggressive new claims about the social media's method for counting bot and spam accounts.",
 "url": "https://www.breitbart.com/tech/2022/08/07/hide-and-seek-elon-musks-countersuit-accuses-twitter-of-evading-simple-requests/",
 "urlToImage": "https://media.breitbart.com/media/2022/05/elon-musk-twitter-bombs-getty-640x335.jpg",
 "publishedAt": "2022-08-07T19:53:44Z",
 "content": "Tesla CEO Elon Musk’s countersuit against Twitter was revealed on Friday, making aggressive new claims about the social media’s method for counting bot and spam accounts.\r\nThe Washington Postreports … [+1997 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Yahoo Entertainment"
 },
 "author": "Laura Davison, Erik Wasson and Ari Natter",
 "title": "Winners and Losers In Democrats’ Signature Tax and Energy Bill",
 "description": "(Bloomberg) -- President Joe Biden and Senate Majority Leader Chuck Schumer are the biggest winners now that a huge piece of Democrats’ economic agenda is...",
 "url": "https://finance.yahoo.com/news/winners-losers-democrats-signature-tax-195339296.html",
 "urlToImage": "https://s.yimg.com/ny/api/res/1.2/54loIhhNphlXDSqwphzKBw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/uu/api/res/1.2/fT7Q.jz5whUY9BERPwIkzw--~B/aD0xMzMzO3c9MjAwMDthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/bloomberg_politics_602/965046ef90d2cfc3e70b5c00a6337f89",
 "publishedAt": "2022-08-07T19:53:39Z",
 "content": "(Bloomberg) -- President Joe Biden and Senate Majority Leader Chuck Schumer are the biggest winners now that a huge piece of Democrats economic agenda is hurtling toward enactment.\r\nMost Read from Bl… [+7113 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Yahoo Entertainment"
 },
 "author": "Laura Davison, Erik Wasson and Ari Natter",
 "title": "Winners and Losers In Democrats’ Signature Tax and Energy Bill",
 "description": "(Bloomberg) -- President Joe Biden and Senate Majority Leader Chuck Schumer are the biggest winners now that a huge piece of Democrats’ economic agenda is...",
 "url": "https://finance.yahoo.com/news/winners-losers-democrats-signature-tax-195339488.html",
 "urlToImage": "https://s.yimg.com/ny/api/res/1.2/M6lrcSfrLUjoYteUca4K_w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/uu/api/res/1.2/.Pxt43tcY_4VZp9SZeWXbA--~B/aD0xMzMzO3c9MjAwMDthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/bloomberg_markets_842/965046ef90d2cfc3e70b5c00a6337f89",
 "publishedAt": "2022-08-07T19:53:39Z",
 "content": "(Bloomberg) -- President Joe Biden and Senate Majority Leader Chuck Schumer are the biggest winners now that a huge piece of Democrats economic agenda is hurtling toward enactment.\r\nMost Read from Bl… [+7113 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Yahoo Entertainment"
 },
 "author": "Laura Davison",
 "title": "Here’s What’s in the Senate’s Tax and Energy Bill",
 "description": "(Bloomberg) -- The Senate passed Democrats’ landmark tax, climate and health-care bill, setting up the legislation for House approval and President Joe...",
 "url": "https://finance.yahoo.com/news/senate-tax-energy-bill-194408599.html",
 "urlToImage": "https://s.yimg.com/ny/api/res/1.2/1FtsgTvXG1bOCE5HcAzYbA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/uu/api/res/1.2/R_fIdeKeI9Al2BEom2mL2Q--~B/aD0xMzM0O3c9MjAwMDthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/bloomberg_politics_602/e62649f09b594fd9e6ef3311ee2dff4c",
 "publishedAt": "2022-08-07T19:44:08Z",
 "content": "(Bloomberg) -- The Senate passed Democrats landmark tax, climate and health-care bill, setting up the legislation for House approval and President Joe Bidens signature.\r\nMost Read from Bloomberg\r\nAft… [+3899 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Yahoo Entertainment"
 },
 "author": "Laura Davison",
 "title": "Here’s What’s in the Senate’s Tax and Energy Bill",
 "description": "(Bloomberg) -- The Senate passed Democrats’ landmark tax, climate and health-care bill, setting up the legislation for House approval and President Joe...",
 "url": "https://finance.yahoo.com/news/senate-tax-energy-bill-194408835.html",
 "urlToImage": "https://s.yimg.com/ny/api/res/1.2/ZwHjPMlM75hf0TZdLlA9YA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/uu/api/res/1.2/K.iUDXjbNdcUu4b2g7ggLA--~B/aD0xMzM0O3c9MjAwMDthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/bloomberg_markets_842/e62649f09b594fd9e6ef3311ee2dff4c",
 "publishedAt": "2022-08-07T19:44:08Z",
 "content": "(Bloomberg) -- The Senate passed Democrats landmark tax, climate and health-care bill, setting up the legislation for House approval and President Joe Bidens signature.\r\nMost Read from Bloomberg\r\nAft… [+3899 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Seeking Alpha"
 },
 "author": "SA Transcripts",
 "title": "ITT Inc. (ITT) CEO Luca Savi on Q2 2022 Results - Earnings Call Transcript",
 "description": "ITT Inc. (NYSE:NYSE:ITT) Q2 2022 Earnings Conference Call August 4, 2022 8:30 AM ETCompany ParticipantsMark Macaluso - VP, IRLuca Savi - CEO and PresidentEmmanuel Caprais - CFOConference...",
 "url": "https://seekingalpha.com/article/4531303-itt-inc-itt-ceo-luca-savi-on-q2-2022-results-earnings-call-transcript",
 "urlToImage": "https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png",
 "publishedAt": "2022-08-07T19:28:03Z",
 "content": "ITT Inc. (NYSE:ITT) Q2 2022 Earnings Conference Call August 4, 2022 8:30 AM ET\r\n Company Participants\r\n Mark Macaluso - VP, IR\r\n Luca Savi - CEO and President\r\n Emmanuel Caprais - CFO\r\n Conference Ca… [+48878 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Towleroad"
 },
 "author": "Towleroad",
 "title": "Flight tracking exposure irks billionaires and baddies",
 "description": "Published by AFP The Flightradar24 app is seen on a smartphone in front of a screen showing the live position of planes tracked by the app in the area of Los Angeles on August 5, 2022 Washington (AFP) – How to upset Russian freight companies, Elon Musk, Chine…",
 "url": "https://www.towleroad.com/2022/08/flight-tracking-exposure-irks-billionaires-and-baddies/",
 "urlToImage": "https://www.towleroad.com/wp-content/uploads/2022/08/635232-origin_1.jpg",
 "publishedAt": "2022-08-07T18:49:52Z",
 "content": "Washington (AFP) – How to upset Russian freight companies, Elon Musk, Chinese authorities and Kylie Jenner in one go? Track their jets. \r\nFlight following websites and Twitter accounts offer real-tim… [+4432 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "TheGrio"
 },
 "author": "Associated Press",
 "title": "Twitter breach exposed anonymous account owners￼",
 "description": "A vulnerability in Twitter’s software that exposed an undetermined number of owners of anonymous accounts to potential identity compromise last\nThe post Twitter breach exposed anonymous account owners￼ appeared first on TheGrio.",
 "url": "http://thegrio.com/2022/08/07/twitter-breach-anonymous-accounts/",
 "urlToImage": "https://thegrio.com/wp-content/uploads/2022/08/1000-28.jpeg",
 "publishedAt": "2022-08-07T18:47:49Z",
 "content": "Twitter says it can't confirm the tally or locations of accounts impacted\r\nA vulnerability in Twitters software that exposed an undetermined number of owners of anonymous accounts to potential identi… [+2938 chars]"
 },
 -{
 -"source": {
 "id": "rt",
 "name": "RT"
 },
 "author": "RT",
 "title": "Pelosi’s Taiwan trip row may affect iPhone 14 rollout – media",
 "description": "China-Taiwan tensions in the wake of US House Speaker Nancy Pelosi’s visit may delay introduction of Apple’s iPhone 14, reports suggest Read Full Article at RT.com",
 "url": "https://www.rt.com/news/560422-china-taiwan-row-may-delay-iphone14/",
 "urlToImage": "https://cdni.russiatoday.com/files/2022.08/article/62f0045985f5401c6b14e5e9.jpg",
 "publishedAt": "2022-08-07T18:30:01Z",
 "content": "US House Speaker Nancy Pelosi’s (D-California) controversial visit to Taiwan may have negative ramifications for America’s most valuable company, as new labeling restrictions imposed by Beijing could… [+2829 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Notebookcheck.net"
 },
 "author": "Fawad Murtaza",
 "title": "Twitter slams Elon Musk for using a \"generic\" bot detection tool that labeled his own account a \"likely bot\"",
 "description": "Twitter claps back at Elon Musk over his use of a publicly listed web bot detection tool to measure the number of spam accounts on the platform. For the uninitiated, Musk signed an agreement to acquire Twitter for US$44 billion before backing out of the deal …",
 "url": "https://www.notebookcheck.net/Twitter-slams-Elon-Musk-for-using-a-generic-bot-detection-tool-that-labeled-his-own-account-a-likely-bot.639231.0.html",
 "urlToImage": "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/csm_Elon_Musk_Twitter_U__bernahme_Deal_2_ece6046120.jpg",
 "publishedAt": "2022-08-07T17:49:00Z",
 "content": "The ongoing fight between Elon Musk and Twitter has taken an interesting turn. After Twitter filed a lawsuit against Musk for walking away from the acquisition based on the number of bot accounts, Mu… [+1281 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Notebookcheck.net"
 },
 "author": "Daniel Zlatev",
 "title": "Tesla's plates and dealer license face suspension in California as the DMV pegs Autopilot naming 'deceptive'",
 "description": "Tesla must be ordered to pay damages to all those who suffered from the 'misleading' names of its Autopilot and Full Self-Driving Capability features, demands the Californian DMV. It also wants Tesla's dealer license that expires on October 31 to be suspended…",
 "url": "https://www.notebookcheck.net/Tesla-s-plates-and-dealer-license-face-suspension-in-California-as-the-DMV-pegs-Autopilot-naming-deceptive.639514.0.html",
 "urlToImage": "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/tesla_fsd_view_2.jpg",
 "publishedAt": "2022-08-07T17:47:00Z",
 "content": "The Los Angeles Department of Motor Vehicles has filed an accusation with the California Office of Administrative Hearings that wants Tesla's special plates and dealer license revoked or at least sus… [+1926 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Car and Driver"
 },
 "author": "Sebastian Blanco",
 "title": "Toyota Offers to Buy Back bZ4X EVs with Wheels That Might Fall Off",
 "description": "A recall was announced in June and affects 258 units of the new model. It also involves several hundred Subaru Solterra EVs, but those have not yet reached...",
 "url": "https://www.caranddriver.com/news/a40827514/toyota-bz4x-wheel-problem-buyback/",
 "urlToImage": "https://s.yimg.com/ny/api/res/1.2/zoz5p18YGK0HS1LM83rrbw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02MDM-/https://s.yimg.com/uu/api/res/1.2/4PaHvhn2eiJENufcd8Zp4A--~B/aD03MjQ7dz0xNDQwO2FwcGlkPXl0YWNoeW9u/https://media.zenfs.com/en/car_and_driver_581/48d1c58e99c270fb18104ab6c8453273",
 "publishedAt": "2022-08-07T17:44:00Z",
 "content": "<ul><li> Toyota announced a recall for the bZ4X electric vehicle in June, acknowledging that wheels might detach from the car because of malfunctioning hub bolts and asking customers to stop driving … [+3269 chars]"
 }
 ]
 }

 arrow_back
 Top business headlines in the US right now

 arrow_forward
 GET
 https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=cebbb13058aa41d08f9c8b3263efbbd4
 {
 "status": "ok",
 "totalResults": 69,
 -"articles": [
 -{
 -"source": {
 "id": "reuters",
 "name": "Reuters"
 },
 "author": null,
 "title": "Indonesia says Tesla strikes $5 bln deal to buy nickel products - media - Reuters",
 "description": "U.S. carmaker Tesla <a href=\"https://www.reuters.com/companies/TSLA.O\" target=\"_blank\">(TSLA.O)</a> has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabinet minister told …",
 "url": "https://www.reuters.com/business/autos-transportation/indonesia-says-tesla-strikes-5-bln-deal-buy-nickel-products-media-2022-08-08/",
 "urlToImage": "https://www.reuters.com/resizer/iquuTBFWZg4I80pZdkDStk5ITQo=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/5NH4RFNQBFKCTCTVKMLLR45N24.jpg",
 "publishedAt": "2022-08-08T06:40:00Z",
 "content": "JAKARTA, Aug 8 (Reuters) - U.S. carmaker Tesla (TSLA.O) has signed contracts worth about $5 billion to buy materials for their batteries from nickel processing companies in Indonesia, a senior cabine… [+1582 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNBC"
 },
 "author": "Arjun Kharpal",
 "title": "SoftBank posts a $21.6 billion quarterly loss on its Vision Fund, one of the highest in its history - CNBC",
 "description": "SoftBank posted a 2.93 trillion Japanese yen ($21.68 billion) loss for the June quarter for its Vision Fund. This is its second-largest quarterly loss.",
 "url": "https://www.cnbc.com/2022/08/08/softbank-vision-fund-posts-a-21point6-billion-quarterly-loss-.html",
 "urlToImage": "https://image.cnbcfm.com/api/v1/image/107099532-1659696101822-gettyimages-1238288252-JAPAN_SOFTBANK.jpeg?v=1659696197&w=1920&h=1080",
 "publishedAt": "2022-08-08T06:33:54Z",
 "content": "SoftBank posted one of its biggest losses at its Vision Fund investment unit for its fiscal first quarter, as technology stocks continue to get hammered amid rising interest rates.\r\nThe Japanese gian… [+1398 chars]"
 },
 -{
 -"source": {
 "id": "financial-times",
 "name": "Financial Times"
 },
 "author": "Antoine Gara",
 "title": "Carlyle's chief executive resigns after breakdown in contract talks - Financial Times",
 "description": "Kewsong Lee will leave just two years after taking over sole leadership of private equity group",
 "url": "https://www.ft.com/content/4737c65e-8994-4306-ad9c-f5597610571e",
 "urlToImage": "https://www.ft.com/__origami/service/image/v2/images/raw/https%3A%2F%2Fd1e00ek4ebabms.cloudfront.net%2Fproduction%2Fc942d870-398e-4268-9d62-f7d9fd3b8005.jpg?source=next-opengraph&fit=scale-down&width=900",
 "publishedAt": "2022-08-08T04:16:09Z",
 "content": "Private equity giant Carlyle Group is replacing its chief executive Kewsong Lee, who will leave the New York and Washington-based group just two years after he was appointed in July 2020.\r\nThe exit t… [+3262 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "YouTube"
 },
 "author": null,
 "title": "Plastic ban bag backfires at some New Jersey supermarkets - CBS New York",
 "description": "Employees say shoppers in some instances are stealing hand-held baskets instead of buying reusable bags. CBS2's Lisa Rozner reports.",
 "url": "https://www.youtube.com/watch?v=KRl4BdI5fSY",
 "urlToImage": "https://i.ytimg.com/vi/KRl4BdI5fSY/maxresdefault.jpg",
 "publishedAt": "2022-08-08T03:30:08Z",
 "content": null
 },
 -{
 -"source": {
 "id": null,
 "name": "CNBC"
 },
 "author": "Evelyn Cheng",
 "title": "Baidu's robotaxis don't need any human staff in these parts of China - CNBC",
 "description": "Baidu announced Monday it became the first robotaxi operator in China to obtain permits for selling rides with no human staff inside the cars.",
 "url": "https://www.cnbc.com/2022/08/08/baidus-robotaxis-dont-need-any-human-staff-in-these-parts-of-china.html",
 "urlToImage": "https://image.cnbcfm.com/api/v1/image/107100111-1659921398203-Image_from_iOS_64.jpg?v=1659924662&w=1920&h=1080",
 "publishedAt": "2022-08-08T02:23:00Z",
 "content": "BEIJING Chinese tech company Baidu said Monday it has become the first robotaxi operator in China to obtain permits for selling rides with no human driver or staff member inside the vehicles.\r\nThe lo… [+1113 chars]"
 },
 -{
 -"source": {
 "id": "reuters",
 "name": "Reuters"
 },
 "author": null,
 "title": "Oil slides amid recession fears, slow recovery in China imports - Reuters",
 "description": "Oil prices dropped on Monday, hovering near multi-month lows, as recession fears hurt demand outlook and data pointed to a slow recovery in China's crude imports last month.",
 "url": "https://www.reuters.com/markets/europe/oil-slides-amid-recession-fears-slow-recovery-china-imports-2022-08-08/",
 "urlToImage": "https://www.reuters.com/resizer/2nPzjisVJJCWcbXf7AeTL2VFhGA=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/OYUVJBC5TNLP3NJV2TNM3A4MLU.jpg",
 "publishedAt": "2022-08-08T01:49:00Z",
 "content": "SINGAPORE, Aug 8 (Reuters) - Oil prices dropped on Monday, hovering near multi-month lows, as recession fears hurt demand outlook and data pointed to a slow recovery in China's crude imports last mon… [+1742 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "YouTube"
 },
 "author": null,
 "title": "Berkshire Pounces on Market Slump - Bloomberg Markets and Finance",
 "description": "Warren Buffett’s Berkshire Hathaway is pouncing on the slump in markets to buy up equities. Annabelle Droulers reports on Bloomberg Television. --------Follo...",
 "url": "https://www.youtube.com/watch?v=Ja7nRJR3Sak",
 "urlToImage": "https://i.ytimg.com/vi/Ja7nRJR3Sak/hqdefault.jpg",
 "publishedAt": "2022-08-08T00:47:01Z",
 "content": null
 },
 -{
 -"source": {
 "id": null,
 "name": "CoinDesk"
 },
 "author": "James Rubin, Sam Reynolds",
 "title": "First Mover Asia: Bitcoin Hovers Over $23K in Weekend Trading; an Edgy Environment at Seoul's Blockchain Megaweek - CoinDesk",
 "description": "Ether and most other major altcoins trade sideways as investors await further economic indicators.",
 "url": "https://www.coindesk.com/markets/2022/08/08/first-mover-asia-bitcoin-hovers-over-23k-in-weekend-trading-an-edgy-environment-at-seouls-blockchain-megaweek/",
 "urlToImage": "https://www.coindesk.com/resizer/UO7-MEFfgtk5F0i_L3R7lTkuzRE=/1200x628/center/middle/cloudfront-us-east-1.images.arcpublishing.com/coindesk/Z2REMEGM4FCCZJ374IIFHFJ5QA.jpg",
 "publishedAt": "2022-08-08T00:35:00Z",
 "content": "Good morning. Heres whats happening:\r\nPrices: Bitcoin holds steady over $23K in weekend trading; most other major cryptos rise.\r\nInsights: South Korea holds its blockchain megaweek. The atmosphere is… [+8927 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNBC"
 },
 "author": "Weizhen Tan",
 "title": "BlackRock says the era of steady growth has ended — and it tells investors how to position for it - CNBC",
 "description": "BlackRock named 3 investing mistakes to avoid — and what to do instead.",
 "url": "https://www.cnbc.com/2022/08/08/blackrock-era-of-steady-growth-has-ended-but-heres-how-to-prepare.html",
 "urlToImage": "https://image.cnbcfm.com/api/v1/image/106601157-15936905562020-07-02t100452z_745441080_rc2ykh95h4vt_rtrmadp_0_eu-blackrock-court.jpeg?v=1593690590&w=1920&h=1080",
 "publishedAt": "2022-08-08T00:34:00Z",
 "content": null
 },
 -{
 -"source": {
 "id": null,
 "name": "YouTube"
 },
 "author": null,
 "title": "Fed Hasn't Got U.S. Economy Under Control Yet: K2 Asset AM - Bloomberg Markets and Finance",
 "description": null,
 "url": "https://www.youtube.com/supported_browsers?next_url=https:%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DcOCo0jj_J30",
 "urlToImage": null,
 "publishedAt": "2022-08-07T23:34:46Z",
 "content": "Your browser isnt supported anymore. Update it to get the best YouTube experience and our latest features. Learn more\r\nRemind me later"
 },
 -{
 -"source": {
 "id": null,
 "name": "CNBC"
 },
 "author": "MacKenzie Sigalos",
 "title": "Bankrupt crypto lending platform Celsius withdraws motion to hire CFO back at $92,000 a month - CNBC",
 "description": "Celsius has withdrawn its motion to bring back ex-CFO Rod Bolger at $92,000 a month.",
 "url": "https://www.cnbc.com/2022/08/07/celsius-withdraws-motion-to-hire-cfo-back-at-92000-a-month.html",
 "urlToImage": "https://image.cnbcfm.com/api/v1/image/107074612-1655108062602-gettyimages-1236340828-PO1_0004.jpeg?v=1657268821&w=1920&h=1080",
 "publishedAt": "2022-08-07T23:16:15Z",
 "content": "Embattled lending platform Celsius has withdrawn its motion to bring back ex-CFO Rod Bolger at $92,000 a month, prorated over a period of at least six weeks, according to a court document filed in th… [+5605 chars]"
 },
 -{
 -"source": {
 "id": "reuters",
 "name": "Reuters"
 },
 "author": null,
 "title": "China's exports gain steam but outlook cloudy as global growth cools - Reuters",
 "description": "China's export growth unexpectedly picked up speed in July, offering an encouraging boost to the economy as its struggles to recover from a COVID-induced slump, but weakening global demand could start to drag on shipments in coming months.",
 "url": "https://www.reuters.com/markets/asia/chinas-export-growth-gains-steam-despite-weakening-global-demand-2022-08-07/",
 "urlToImage": "https://www.reuters.com/resizer/CU0-W2OCg_tDnqo8nFKksOJ6jbk=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/QP77GIADRBLNTJPCPD6OTVDPUE.jpg",
 "publishedAt": "2022-08-07T23:00:00Z",
 "content": "BEIJING, Aug 7 (Reuters) - China's export growth unexpectedly picked up speed in July, offering an encouraging boost to the economy as its struggles to recover from a COVID-induced slump, but weakeni… [+5229 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "The Daily Hodl"
 },
 "author": "Daily Hodl Staff",
 "title": "Top Analyst Says Ethereum (ETH) About To Rip, Calls One Exchange Token an ‘Actual Tank’ - The Daily Hodl",
 "description": "A popular crypto strategist says that a breakout rally is in sight for leading smart contract platform Ethereum (ETH).",
 "url": "https://dailyhodl.com/2022/08/07/top-analyst-says-ethereum-eth-about-to-rip-calls-one-exchange-token-an-actual-tank/",
 "urlToImage": "https://dailyhodl.com/wp-content/uploads/2022/01/ocean-of-capital-ethereum.jpg",
 "publishedAt": "2022-08-07T22:05:54Z",
 "content": "A popular crypto strategist says that a breakout rally is in sight for leading smart contract platform Ethereum (ETH).\r\nThe crypto analyst known in the industry as Kaleo tells his 531,000 Twitter fol… [+1396 chars]"
 },
 -{
 -"source": {
 "id": "the-verge",
 "name": "The Verge"
 },
 "author": "Emma Roth",
 "title": "Hackers might have figured out your secret Twitter accounts - The Verge",
 "description": "Twitter has confirmed that hackers took advantage of a vulnerability that exposed the account names associated with users’ email addresses and phone numbers.",
 "url": "https://www.theverge.com/2022/8/7/23295873/hackers-secret-twitter-accounts-security-flaw-vulnerability",
 "urlToImage": "https://cdn.vox-cdn.com/thumbor/6HygePQ2EjTyOlCCpY0a75yvvco=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/12742431/acastro_180827_1777_0004.jpg",
 "publishedAt": "2022-08-07T20:52:14Z",
 "content": "A bad actor reportedly exposed 5.4 million Twitter accounts\r\nIllustration by Alex Castro / The Verge\r\nA security vulnerability on Twitter allowed a bad actor to find out the account names associated … [+1550 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "TheStreet"
 },
 "author": "Sarah Jean Callahan",
 "title": "Why Cracker Barrel’s New Menu Item Upset Its Customers - TheStreet",
 "description": "The chain's efforts towards modern menu offerings has not gone over well.",
 "url": "https://www.thestreet.com/lifestyle/cracker-barrel-new-menu-impossible-meat-sausage-outrage",
 "urlToImage": "https://www.thestreet.com/.image/t_share/MTcwNzE1MzcxMTY1MTk3NTc0/cracker-barrel_2.jpg",
 "publishedAt": "2022-08-07T20:42:29Z",
 "content": "Cracker Barrel  (CBRL) - Get Cracker Barrel Old Country Store Inc. Report isn’t a household name for many, but for others it is their mainstay when it comes to good ol’ country home cookin’. Either w… [+2904 chars]"
 },
 -{
 -"source": {
 "id": "cnn",
 "name": "CNN"
 },
 "author": "Chuck Johnston",
 "title": "More than 860 US flights canceled, 4,000 delayed on Sunday - CNN",
 "description": "Another wave of airline cancellations and delays is being felt across the United States this weekend.",
 "url": "https://www.cnn.com/2022/08/07/business/us-flight-cancellations-delays-sunday/index.html",
 "urlToImage": "https://cdn.cnn.com/cnnnext/dam/assets/220807152430-us-flight-cancellations-delays-sunday-restricted-super-tease.jpg",
 "publishedAt": "2022-08-07T20:40:00Z",
 "content": null
 },
 -{
 -"source": {
 "id": "reuters",
 "name": "Reuters"
 },
 "author": null,
 "title": "Tata Motors to buy Ford India's manufacturing plant for $91 million - Reuters",
 "description": "Tata Motors Ltd <a href=\"https://www.reuters.com/companies/TAMO.NS\" target=\"_blank\">(TAMO.NS)</a> signed an agreement on Sunday to buy Ford Motor's manufacturing plant in the western state of Gujarat for 7.26 billion rupees ($91.5 million).",
 "url": "https://www.reuters.com/business/autos-transportation/tata-motors-buy-ford-indias-manufacturing-plant-91-million-2022-08-07/",
 "urlToImage": "https://www.reuters.com/resizer/_sjEWVYRiCQIflgklxFWYnaRSk0=/800x419/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/FOASCEELTJJ4JEZ4UC57J4Q7DM.jpg",
 "publishedAt": "2022-08-07T19:57:00Z",
 "content": "Aug 8 (Reuters) - Tata Motors Ltd (TAMO.NS) signed an agreement on Sunday to buy Ford Motor's manufacturing plant in the western state of Gujarat for 7.26 billion rupees ($91.5 million).\r\nThe agreeme… [+968 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "WABC-TV"
 },
 "author": null,
 "title": "JetBlue plane clips wingtip of Southwest jet at LaGuardia airport in New York City, FAA says - WABC-TV",
 "description": "A JetBlue plane clipped the right wingtip of a Southwest jet while pushing back from a gate at LaGuardia Airport Sunday morning, according to the Federal Aviation Administration.",
 "url": "https://abc7ny.com/laguardia-airport-jetblue-southwest-airlines-planes-clip/12107521/",
 "urlToImage": "https://cdn.abcotvs.com/dip/images/12107534_jetblue-southwest.jpg?w=1600",
 "publishedAt": "2022-08-07T19:37:17Z",
 "content": null
 },
 -{
 -"source": {
 "id": null,
 "name": "Teslarati"
 },
 "author": "Johnna Crider",
 "title": "Auto lobby group worries that most U.S. EVs disqualified for EV tax credit - Teslarati",
 "description": "Automaker lobby group Alliance for Automotive Innovation says that if additional sourcing requirements go into effect, U.S. automakers won’t qualify for the full credit. According to Reuters, these automakers have been privately expressing their worries about…",
 "url": "https://www.teslarati.com/auto-lobby-group-us-evs-disqualified-tax-credit/",
 "urlToImage": "https://www.teslarati.com/wp-content/uploads/2022/08/lobby-group.jpeg",
 "publishedAt": "2022-08-07T17:58:26Z",
 "content": "Automaker lobby group Alliance for Automotive Innovation says that if additional sourcing requirements go into effect, U.S. automakers won’t qualify for the full credit.\r\nAccording to Reuters, these … [+3619 chars]"
 },
 -{
 -"source": {
 "id": null,
 "name": "Moneywise.com"
 },
 "author": null,
 "title": "'We're heading into a housing recession': Here's what the NAHB CEO sees in real estate right now — and why it spells trouble for the economy - msnNOW",
 "description": "This CEO is connected — and worth listening to.",
 "url": "http://moneywise.com/investing/real-estate/NAHB-CEO-August?utm_source=syn_msna_mon&amp;utm_medium=B&amp;utm_campaign=22649&amp;utm_content=msna_mon_22649",
 "urlToImage": "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA10oQgj.img?h=315&w=600&m=6&q=60&o=t&l=f&f=jpg",
 "publishedAt": "2022-08-07T17:54:53Z",
 "content": "Housing, which is a key segment of the national economy, looks extraordinarily weak right now, according to a recent report by the National Association of Home Builders (NAHB).\r\n© Bloomberg/Youtube\r\n… [+3291 chars]"
 }
 ]
 }

 arrow_back
 Top headlines from TechCrunch right now

 arrow_forward
 GET
 https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=cebbb13058aa41d08f9c8b3263efbbd4
 {
 "status": "ok",
 "totalResults": 10,
 -"articles": [
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Paul Sawers",
 "title": "Bluu Seafood unveils its first lab-grown fish products and readies for regulators",
 "description": "Bluu Seafood, a German company developing “lab-grown” fish, is showcasing its first finished products as it prepares to begin the regulatory approval process for key markets in Asia, Europe, and North America. Founded in 2020 (originally as Bluu Biosciences),…",
 "url": "https://techcrunch.com/2022/08/08/bluu-seafood-unveils-its-first-lab-grown-fish-products-and-readies-for-regulators/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2022/08/Bluu-Seafood_Cultivated-Fish-Balls_copyright-Bluu-GmbH_Wim-Jansen-e1659690044872.jpg?w=711",
 "publishedAt": "2022-08-08T09:27:58Z",
 "content": "Bluu Seafood, a German company developing “lab-grown” fish, is showcasing its first finished products as it prepares to begin the regulatory approval process for key markets in Asia, Europe, and Nort… [+7617 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Tage Kene-Okafor",
 "title": "Bluechip, an African systems integrator with partners like Microsoft and Oracle, is expanding to Europe",
 "description": "It’s not often you hear about African tech companies expanding into Europe. Some examples include fintechs Lidya and Korapay in Eastern Europe and the U.K., respectively. In the latest development, Bluechip Technologies, an African enterprise company that par…",
 "url": "https://techcrunch.com/2022/08/08/bluechip-an-african-systems-integrator-with-partners-like-microsoft-and-oracle-is-expanding-to-europe/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2022/08/930C023A-F384-4A2A-8C77-24D432811C5E.jpeg?w=482",
 "publishedAt": "2022-08-08T09:00:08Z",
 "content": "It’s not often you hear about African tech companies expanding into Europe. Some examples include fintechs Lidya and Korapay in Eastern Europe and the U.K., respectively. In the latest development, B… [+5098 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Manish Singh",
 "title": "SoftBank cautions startup winter may last longer if unicorn founders don't accept lower valuations",
 "description": "Masayoshi Son, the chief executive of SoftBank Group, which reported a quarterly loss of over $23 billion, is worried that the funding winter for startups may continue.",
 "url": "https://techcrunch.com/2022/08/08/softbank-cautions-startup-winter-may-last-longer-if-unicorn-founders-dont-accept-lower-valuations/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2019/12/GettyImages-1180331913.jpg?w=600",
 "publishedAt": "2022-08-08T08:47:54Z",
 "content": "Masayoshi Son, the chief executive of SoftBank Group, which reported a quarterly loss of over $23 billion, is worried that the funding winter for startups may linger in the immediate future.\r\nThe 64-… [+866 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Rebecca Bellan",
 "title": "Baidu to operate fully driverless commercial robotaxi in Wuhan and Chongqing",
 "description": "Chinese internet giant Baidu has secured permits to offer a fully driverless commercial robotaxi service, with no human driver present, in Chongqing and Wuhan via the company’s autonomous ride-hailing unit, Apollo Go. Baidu’s wins in Wuhan and Chongqing come …",
 "url": "https://techcrunch.com/2022/08/07/baidu-to-operate-fully-driverless-commercial-robotaxi-in-wuhan-and-chongqing/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2022/08/image-2.jpg?w=600",
 "publishedAt": "2022-08-08T02:00:35Z",
 "content": "Chinese internet giant Baidu has secured permits to offer a fully driverless commercial robotaxi service, with no human driver present, in Chongqing and Wuhan via the company’s autonomous ride-hailin… [+3491 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Lucas Matney, Anita Ramaswamy",
 "title": "There’s always another nightmarish crypto hack around the corner",
 "description": "Welcome back to Chain Reaction. Last week, we looked at the near-term future for crypto gaming as VCs zero in on where to place consumer bets. This week, we’re looking at hardware wallets and the endless journey towards feeling safe in the crypto world. To ge…",
 "url": "https://techcrunch.com/2022/08/07/theres-always-another-nightmarish-crypto-hack-around-the-corner/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2022/01/nft-thief.jpg?w=711",
 "publishedAt": "2022-08-07T22:30:42Z",
 "content": "Welcome back to Chain Reaction.\r\nLast week, we looked at the near-term future for crypto gaming as VCs zero in on where to place consumer bets. This week, we’re looking at hardware wallets and the en… [+10194 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Carly Page",
 "title": "The cybersecurity funding bubble hasn’t burst -- but it’s starting to deflate",
 "description": "Despite a slowdown in financing and an apparent over-investment in certain cybersecurity subsectors, investors don’t expect doom and gloom for the cybersecurity market going forward.",
 "url": "https://techcrunch.com/2022/08/07/the-cybersecurity-funding-bubble-hasnt-burst-but-its-starting-to-deflate/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2020/02/GettyImages-679796517.jpg?w=690",
 "publishedAt": "2022-08-07T16:30:33Z",
 "content": "Last year wasrecord-breaking for the cybersecurity market. Data from Momentum Cyber, a financial advisory firm for the security industry, showed that cybersecurity startups raised a record-shattering… [+384 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Kyle Wiggers",
 "title": "Why not all VCs are ready to embrace AI-powered investment tools",
 "description": "Not all VCs are embracing AI for due diligence and investment decisions. Why? It could be that the algorithms fall short in key ways.",
 "url": "https://techcrunch.com/2022/08/07/why-not-all-vcs-are-ready-to-embrace-ai-powered-investment-tools/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2020/10/GettyImages-1023943076.jpg?w=600",
 "publishedAt": "2022-08-07T16:00:56Z",
 "content": "AI’s strength lies in its predictive prowess. Fed enough data, the conventional thinking goes, a machine learning algorithm can predict just about anything — for example, which word will appear next … [+706 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Mary Ann Azevedo",
 "title": "Q3 outlook forecasts cloudy days ahead for fintech M&A",
 "description": "Fintech M&A was down in Q2 and the prospects for Q3 remain cloudy.",
 "url": "https://techcrunch.com/2022/08/07/as-paystand-acquires-yaydoo-should-we-expect-to-see-more-fintech-ma-in-q3/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2021/11/clouds-money.jpg?w=711",
 "publishedAt": "2022-08-07T14:16:34Z",
 "content": "Welcome to The Interchange! If you received this in your inbox, thank you for signing up and your vote of confidence. If youre reading this as a post on our site, sign up here so you can receive it d… [+14504 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Greg Kumparak",
 "title": "Amazon buys Roomba's maker, Bolt vanishes, and YC slims down",
 "description": "Hello again! Welcome back to Week in Review, the newsletter where we quickly recap the top stories to cross TechCrunch dot-com over the past seven days. Want it in your inbox? Get it here. The most read story this week is kind of a wild one: Bolt Mobility, an…",
 "url": "https://techcrunch.com/2022/08/06/amazon-buys-roombas-maker-bolt-vanishes-and-yc-slims-down/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2019/11/Roomba-S9-01.jpg?w=600",
 "publishedAt": "2022-08-06T20:16:23Z",
 "content": "Hello again! Welcome back to Week in Review, the newsletter where we quickly recap the top stories to cross TechCrunch dot-com over the past seven days. Want it in your inbox? Get it here.\r\nThe most … [+2689 chars]"
 },
 -{
 -"source": {
 "id": "techcrunch",
 "name": "TechCrunch"
 },
 "author": "Sarah Perez",
 "title": "This Week in Apps: French developers sue Apple, time spent in apps grows, Instagram adds NFTs",
 "description": "This Week in Apps keeps up with the fast-moving app industry with the latest from the world of apps, including news, updates, startup fundings, M&As and more.",
 "url": "https://techcrunch.com/2022/08/06/this-week-in-apps-french-developers-sue-apple-time-spent-in-apps-grows-instagram-adds-nfts/",
 "urlToImage": "https://techcrunch.com/wp-content/uploads/2022/07/this-week-in-apps-splash-2022.webp?w=753",
 "publishedAt": "2022-08-06T18:30:43Z",
 "content": "Welcome back to This Week in Apps, the weekly TechCrunch series that recaps the latest in mobile OS news, mobile applications and the overall app economy.\r\nGlobal app spending reached $65 billion in … [+19267 chars]"
 }
 ]
 }

 arrow_back
 All articles published by the Wall Street Journal in the last 6 months, sorted by recent first
 GET
 https://newsapi.org/v2/everything?domains=wsj.com&apiKey=cebbb13058aa41d08f9c8b3263efbbd4
 {
 "status": "ok",
 "totalResults": 450,
 -"articles": [
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Megumi Fujikawa",
 "title": "SoftBank Reports $23 Billion Quarterly Loss as Tech Downturn Hits",
 "description": "The Japanese technology investor suffered losses after holdings such as Uber and DoorDash lost value.",
 "url": "https://www.wsj.com/articles/softbank-reports-23-billion-quarterly-loss-as-tech-downturn-hits-11659940047",
 "urlToImage": "https://images.wsj.net/im-599395/social",
 "publishedAt": "2022-08-08T06:44:15Z",
 "content": "TOKYOJapanese technology investor SoftBank Group Corp. on Monday reported a loss of more than $23 billion in the three months to June after its Vision Fund investments suffered from the global sellof… [+305 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Raffaele Huang",
 "title": "Two Chinese Cities Approve Baidu’s Unmanned Self-Driving Taxis",
 "description": "China, seeking to catch up to the U.S. in autonomous driving cars, has been increasingly active in setting up regulations that allow such vehicles on public roads.",
 "url": "https://www.wsj.com/articles/two-chinese-cities-approve-baidus-unmanned-self-driving-taxis-11659939689",
 "urlToImage": "https://images.wsj.net/im-599394/social",
 "publishedAt": "2022-08-08T06:38:43Z",
 "content": "SINGAPOREChina took a notable regulatory step in the field of driverless taxis, with two cities giving Baidu approval to operate ride-hailing services without a driver or a person overseeing safety i… [+392 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Chun Han Wong",
 "title": "China’s War Games Showcase New Tools to Intimidate Taiwan - The Wall Street Journal",
 "description": "<ol><li>China’s War Games Showcase New Tools to Intimidate Taiwan  The Wall Street Journal\r\n</li><li>Uncertainty lingers as China drills in Taiwan scheduled to end  Reuters\r\n</li><li>China conducts 4th straight day of military drills around Taiwan after Pelos…",
 "url": "https://www.wsj.com/articles/chinas-war-games-showcase-new-tools-to-intimidate-taiwan-11659872354",
 "urlToImage": "https://images.wsj.net/im-599238/social",
 "publishedAt": "2022-08-08T01:29:00Z",
 "content": "HONG KONGChina wrapped up four days of live-fire and combat exercises that showcased its growing offensive capabilities against Taiwan and updated Beijings tool kit for intimidating the island democr… [+452 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Ian Lovett and Jared Malsin",
 "title": "Explosions Rock Ukraine’s Zaporizhzhia Nuclear Power Plant - The Wall Street Journal",
 "description": "<ol><li>Explosions Rock Ukraine’s Zaporizhzhia Nuclear Power Plant  The Wall Street Journal\r\n</li><li>Growing Alarm Over Explosions At Ukraine And Europe's Largest Nuclear Power Plant  NBC News\r\n</li><li>New rocket strike on Ukraine nuclear plant, as UN watch…",
 "url": "https://www.wsj.com/articles/ukraine-ships-more-food-as-worry-about-giant-nuclear-plant-grows-11659871170",
 "urlToImage": "https://images.wsj.net/im-599307/social",
 "publishedAt": "2022-08-08T00:54:00Z",
 "content": "ZAPORIZHZHIA, UkraineExplosions shook Europes largest nuclear plant over the weekend, prompting fears that the war could unleash a nuclear catastrophe. \r\nLocated in the Russian-occupied city of Enerh… [+186 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Sara Randazzo",
 "title": "Tech That Offers New Ways to Teach Kids to Read - The Wall Street Journal",
 "description": "Some educators are beginning to test technology that could help them offer individualized learning tracks.",
 "url": "https://www.wsj.com/articles/tech-that-offers-new-ways-to-teach-kids-to-read-11659879846",
 "urlToImage": "https://images.wsj.net/im-597131/social",
 "publishedAt": "2022-08-07T13:44:00Z",
 "content": "In one vision of classrooms of the near future, young children will put on headsets and read sentences aloud as they navigate computer programs powered by voice-recognition technology.Behind the scen… [+8432 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Sara Randazzo",
 "title": "Tech to Teach Reading: New Literacy Tools Come to Classrooms - The Wall Street Journal",
 "description": "Some educators are beginning to test technology that could help them offer individualized learning tracks.",
 "url": "https://www.wsj.com/articles/literacy-technology-offers-new-ways-to-teach-kids-to-read-11659879846",
 "urlToImage": "https://images.wsj.net/im-597131/social",
 "publishedAt": "2022-08-07T13:44:00Z",
 "content": "In one vision of classrooms of the near future, young children will put on headsets and read sentences aloud as they navigate computer programs powered by voice-recognition technology.Behind the scen… [+8432 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "kvee",
 "title": "Woke Medical Organizations Are Hazardous to Your Health",
 "description": "Article URL: https://www.wsj.com/articles/woke-medical-organizations-are-hazardous-to-your-health-equity-scientific-progress-social-justice-medical-organizations-11659707075\nComments URL: https://news.ycombinator.com/item?id=32374455\nPoints: 5\n# Comments: 1",
 "url": "https://www.wsj.com/articles/woke-medical-organizations-are-hazardous-to-your-health-equity-scientific-progress-social-justice-medical-organizations-11659707075",
 "urlToImage": "https://images.wsj.net/im-598617/social",
 "publishedAt": "2022-08-07T06:52:55Z",
 "content": "The medical profession has succumbed to the notion that it is plagued by systemic racism. Those pushing this idea are making a large bet with potentially lethal consequences. Public and private resea… [+823 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Siobhan Hughes and Andrew Duehren",
 "title": "Senate Democrats Close In on Passing Climate and Tax Bill - The Wall Street Journal",
 "description": "<ol><li>Senate Democrats Close In on Passing Climate and Tax Bill  The Wall Street Journal\r\n</li><li>Harris breaks 50-50 deadlock to advance landmark climate, tax, health bill  The Hill\r\n</li><li>How the climate bill could save you money on electricity, cars …",
 "url": "https://www.wsj.com/articles/democrats-climate-plan-gets-early-green-light-11659798389",
 "urlToImage": "https://images.wsj.net/im-599207/social",
 "publishedAt": "2022-08-07T05:06:00Z",
 "content": "WASHINGTONThe Senate advanced \r\na climate and tax package past a procedural hurdle in the narrowly divided chamber, as Democrats closed in on passing elements of President Bidens agenda that have lan… [+450 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Bailey McCann",
 "title": "Is It a Good Time to Convert a Traditional IRA to a Roth IRA?",
 "description": "Such conversions are more appealing when markets are down. But there are other factors to consider, especially if you are close to retirement.",
 "url": "https://www.wsj.com/articles/traditional-roth-ira-conversion-11659616440",
 "urlToImage": "https://images.wsj.net/im-598052/social",
 "publishedAt": "2022-08-06T16:00:00Z",
 "content": "If you have an individual retirement account as part of your retirement savings, advisers say it might be a good time to consider converting it to a Roth IRA. Thats because your tax bill associated w… [+178 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Nathaniel Taplin",
 "title": "Pelosi Gambit Reshapes Political Risk in Asia...",
 "description": "Pelosi Gambit Reshapes Political Risk in Asia...\r\n\n \n \n \n (Top headline, 12th story, link)\r\n\n \r\n\n \r\n\n \n Related stories:White House summons Chinese ambassador as crisis escalates...\r\nSimulating Attack on Island...\r\n'Sinking American warships'...\r\nTells USA: C…",
 "url": "https://www.wsj.com/articles/nancy-pelosis-taiwan-gambit-reshapes-political-risk-in-asia-11659769520",
 "urlToImage": "https://images.wsj.net/im-598473/social",
 "publishedAt": "2022-08-06T15:19:36Z",
 "content": "Nancy Pelosi, the speaker of the U.S. House, has come and gone in Taiwan. In her wake have come missile flyovers, enough discussion to briefly crash Chinas Twitter-like microblogging service Weibo, t… [+842 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "By Jen Murphy",
 "title": "Cure for Travel Stress: Airport Workouts...",
 "description": "More passengers are discovering the benefits of  exercising during this summer’s long flight delays.",
 "url": "https://www.wsj.com/articles/airport-flight-delay-workouts-11659728376",
 "urlToImage": "https://images.wsj.net/im-596904/social",
 "publishedAt": "2022-08-06T14:10:38Z",
 "content": "The airport sprint has become a common sight during a summer of chaotic air travel. But Caroline Wales wasnt running at the airport to catch a flight. \r\nDuring a delayed layover in Dallas-Fort Worth … [+134 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Julie Jargon",
 "title": "Feel Like the Internet Ate Your Creativity? Here’s How These Famous Artists Got It Back",
 "description": "Photographer Eric Hart, Jr., novelist Gary Shteyngart and other creative thinkers explain how they tune out digital distractions and let their minds wander.",
 "url": "https://www.wsj.com/articles/feel-like-the-internet-ate-your-creativity-heres-how-these-famous-artists-got-it-back-11659732743",
 "urlToImage": "https://images.wsj.net/im-598626/social",
 "publishedAt": "2022-08-06T13:53:49Z",
 "content": "Humans have built the perfect machine for keeping our brains busy, if not productive.\r\nThe internet, with social networks, endless games and media, fills the moments we once spent sitting silently wi… [+94 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Akane Otani",
 "title": "Berkshire Hathaway’s Earnings Fall, Hurt by Market Volatility",
 "description": "The company posted a loss of $43.8 billion, compared with a profit of $28.1 billion in the year-earlier period.",
 "url": "https://www.wsj.com/articles/berkshire-hathaways-earnings-fall-hurt-by-market-volatility-11659789877",
 "urlToImage": "https://images.wsj.net/im-596804/social",
 "publishedAt": "2022-08-06T12:44:00Z",
 "content": "Berkshire Hathaway earnings slid in the second quarter as \r\nmarket turmoil weighed on the companys massive stock portfolio.The Omaha, Neb.-based company, which owns businesses ranging from insurer Ge… [+229 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "James Fanelli and Vicky Ge Huang",
 "title": "Before Crypto Lender Celsius Crashed, CEO Alex Mashinsky Was Known for Big Ideas and Battles",
 "description": "Alex Mashinsky, a serial entrepreneur, proposed a stream of moonshot ideas in different industries over many years—and frequently left a string of unhappy colleagues and investors.",
 "url": "https://www.wsj.com/articles/before-crypto-lender-celsius-crashed-ceo-alex-mashinsky-was-known-for-big-ideas-and-battles-11659787202",
 "urlToImage": "https://images.wsj.net/im-588065/social",
 "publishedAt": "2022-08-06T12:00:00Z",
 "content": "For some 30 years, Alex Mashinsky barreled into whatever was the hot technology of the time, promising revolutions in long-distance calling, airport rides and, most recently, crypto. He often left a … [+364 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Akiko Matsuda",
 "title": "Direct-to-Consumer Sales Are Fueling Supply-Chain Tech Growth - The Wall Street Journal",
 "description": "Software providers that help companies manage inventories are expanding as goods manufacturers look to sell directly to shoppers",
 "url": "https://www.wsj.com/articles/direct-to-consumer-sales-are-fueling-supply-chain-tech-growth-11659787201",
 "urlToImage": "https://images.wsj.net/im-598683/social",
 "publishedAt": "2022-08-06T12:00:00Z",
 "content": "The push by consumer-goods suppliers to sell directly to consumers is giving a boost to technology companies that help untangle the complexities of retail supply chains.Footwear, apparel and electron… [+5464 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Karen Hao in Hong Kong and Joyu Wang in Taipei",
 "title": "Beijing Simulates Attack on Taiwan as Chinese Exercises Extend Into Third Day - The Wall Street Journal",
 "description": "Chinese military aircraft and ships crossed the halfway mark of the Taiwan Strait, in a simulated land strike on the self-governing island that Beijing claims as its own.",
 "url": "https://www.wsj.com/articles/beijing-simulates-attack-on-taiwan-as-chinese-exercises-extend-into-third-day-11659784913",
 "urlToImage": "https://images.wsj.net/im-599117/social",
 "publishedAt": "2022-08-06T11:56:00Z",
 "content": "A large number of Chinese military aircraft and ships crossed the halfway mark of the Taiwan Strait on Saturday, in a simulated land strike on the self-governing island that Beijing claims as its own… [+216 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Joyu Wang",
 "title": "In Taiwan, Life Goes On Under Barrel of China’s Gun - The Wall Street Journal",
 "description": "<ol><li>In Taiwan, Life Goes On Under Barrel of China’s Gun  The Wall Street Journal\r\n</li><li>Taiwan says China is rehearsing invasion attack  Fox News\r\n</li><li>Taiwan says multiple Chinese aircraft and vessels spotted in possible simulated attack  CNN\r\n</l…",
 "url": "https://www.wsj.com/articles/in-taiwan-life-goes-on-under-barrel-of-chinas-gun-11659785079",
 "urlToImage": "https://images.wsj.net/im-599122/social",
 "publishedAt": "2022-08-06T11:24:00Z",
 "content": "TAIPEILiuqiu, a short high-speed ferry ride from the southern Taiwanese town of Donggang, draws day trippers to its coral-fringed beaches, laid-back atmosphere and scenic lookouts. This week, some vi… [+600 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Nick Kostov",
 "title": "The Inside Story of Carlos Ghosn’s Brazen Escape From Japan",
 "description": "The scheme involved stacks of cash, a stealthy dash to the airport, and plenty of cloak-and-dagger tactics. In the end, though, the auto executive had to hunker down in a claustrophobic box, hoping no one would look inside.",
 "url": "https://www.wsj.com/articles/carlos-ghosn-escape-japan-private-jet-box-hidden-11659733392",
 "urlToImage": "https://images.wsj.net/im-597899/social",
 "publishedAt": "2022-08-06T04:40:15Z",
 "content": "Ever the thorough operative, Michael Taylor began laying the groundwork of his cover story as soon as the private jet he had chartered landed in Japan. He and George Zayek were violinists who would b… [+722 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Benjamin Rasmussen For The Wall Street Journal",
 "title": "The Other Electric Vehicle: E-Bikes Gain Ground for Americans Avoiding Gas Cars",
 "description": "Electric cars weren’t the only thing to post record sales last year. A growing number of Americans are turning to electric bikes for at least some of their transportation needs.",
 "url": "https://www.wsj.com/articles/the-other-electric-vehicle-e-bikes-gain-ground-for-americans-avoiding-gas-cars-11659758415",
 "urlToImage": "https://images.wsj.net/im-598761/social",
 "publishedAt": "2022-08-06T04:25:31Z",
 "content": "Crystal and Brianne Williams, a married couple who live just outside of Denver, recently made a decision that would have seemed radical just a few years ago. \r\nThe pair, 33 and 29 years old, ditched … [+384 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Bee Wilson",
 "title": "Why Our Summer Corn Is Ever Sweeter",
 "description": "New breeds have transformed corn’s traditional flavor and texture, making it more sugary and less creamy.",
 "url": "https://www.wsj.com/articles/why-our-summer-corn-is-ever-sweeter-11659758460",
 "urlToImage": "https://images.wsj.net/im-597949/social",
 "publishedAt": "2022-08-06T04:01:00Z",
 "content": "Few summer treats feel quite as timeless as a whole, sweet corn on the cob. It seems to belong to an older, simpler way of eating, in which no cutlery is required (unless you insist on using those ti… [+1248 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Aaron Tilley",
 "title": "Oracle Lays Off Hundreds of Employees",
 "description": "The layoffs primarily hit Oracle’s advertising and customer experience group as the company emphasizes cloud and healthcare IT services.",
 "url": "https://www.wsj.com/articles/oracle-lays-off-hundreds-of-employees-11659727874",
 "urlToImage": "https://images.wsj.net/im-598822/social",
 "publishedAt": "2022-08-05T19:33:24Z",
 "content": "Oracle laid off hundreds of employees this week as the business software provider prioritizes its healthcare IT services and cloud businesses, according to people familiar with the companys actions.\r… [+224 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Shen Lu",
 "title": "Snickers Maker Apologizes to China for Referring to Taiwan as Its Own Country",
 "description": "Mars Wrigley said it respects China’s national sovereignty and conducts its business operations in ‘strict compliance’ with local laws and regulations",
 "url": "https://www.wsj.com/articles/snickers-maker-apologizes-to-china-for-referring-to-taiwan-as-its-own-country-11659727945",
 "urlToImage": "https://images.wsj.net/im-598730/social",
 "publishedAt": "2022-08-05T19:32:00Z",
 "content": "Mars Wrigley, the manufacturer of the Snickers candy bar, apologized Friday for promotional material that referred to Taiwan as its own country. \r\nThe American candy-maker had been promoting what app… [+229 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Megan Graham",
 "title": "WPP Raises Guidance Thanks to Strong Client Demand",
 "description": "London-based advertising company reports like-for-like revenue less pass-through costs of 8.3% for second quarter",
 "url": "https://www.wsj.com/articles/wpp-raises-guidance-thanks-to-strong-client-demand-11659718204",
 "urlToImage": "https://images.wsj.net/im-598635/social",
 "publishedAt": "2022-08-05T16:50:00Z",
 "content": "Advertising giant\r\nWPP\r\nPLC has again raised its guidance for 2022, saying that marketer demand remains strong despite the uncertain economic background.The London-based companywhich owns agencies in… [+2116 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Jonathan D. Rockoff",
 "title": "Pfizer in Advanced Talks to Buy Global Blood Therapeutics for About $5 Billion",
 "description": "Acquiring the maker of a recently approved drug for sickle-cell disease would be the latest move by the drug giant to bolster its portfolio and pipeline.",
 "url": "https://www.wsj.com/articles/pfizer-in-advanced-talks-to-buy-global-blood-therapeutics-for-about-5-billion-11659713670",
 "urlToImage": "https://images.wsj.net/im-598551/social",
 "publishedAt": "2022-08-05T15:45:48Z",
 "content": "Pfizer is in advanced talks to buy Global Blood Therapeutics the maker of a recently approved drug for sickle-cell disease, for about $5 billion, in the latest move by the drug giant to bolster its p… [+272 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "The Wall Street Journal",
 "title": "The Yankees’ Dream Is a World Series. Their Nightmare Is Aaron Judge on the Mets.",
 "description": "Serious Yankee fans are edgy at the moment—the Pinstripes lost two of three to the Mighty Mariners this week, are under .500 since the All-Star break, and the starting pitching has been messy for a bit. After all, these Yankees are still a shiny 70-36, behind…",
 "url": "https://www.wsj.com/articles/aaron-judge-yankees-11659703000",
 "urlToImage": "https://images.wsj.net/im-598280/social",
 "publishedAt": "2022-08-05T12:37:00Z",
 "content": "I regret to inform the Yankee Haters of the Universe that the New York Yankees are again very good at baseball. \r\nSerious Yankee fans are edgy at the momentthe Pinstripes lost two of three to the Mig… [+211 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Trefor Moss",
 "title": "Hot New Trend for GUCCI and CHANEL: Middle America...",
 "description": "After years focused mainly on expansion in China, luxury brands are rediscovering the U.S., opening boutiques across America in cities where they have never previously operated stand-alone stores.",
 "url": "https://www.wsj.com/articles/the-hot-new-trend-for-gucci-and-chanel-middle-america-11659691801",
 "urlToImage": "https://images.wsj.net/im-593460/social",
 "publishedAt": "2022-08-05T12:13:38Z",
 "content": "Gucci in Columbus, Ohio. Chanel in Troy, Mich. Hermès in Naples, Fla.\r\nWelcome to luxurys latest frontiers. After years focused mainly on expansion in China, luxury brands are rediscovering the U.S.,… [+104 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Peter Landers and Chieko Tsuneoka",
 "title": "Chinese Missiles Show Japan Lies in ‘Same War Zone’ as Taiwan - The Wall Street Journal",
 "description": "<ol><li>Chinese Missiles Show Japan Lies in ‘Same War Zone’ as Taiwan  The Wall Street Journal\r\n</li><li>China sends warships and jets close to Taiwan and sparks alert in Japan as tensions rise  CNN\r\n</li><li>China cuts off vital U.S. contacts over Pelosi Tai…",
 "url": "https://www.wsj.com/articles/chinese-missiles-show-japan-lies-in-same-war-zone-as-taiwan-11659699131",
 "urlToImage": "https://images.wsj.net/im-598383/social",
 "publishedAt": "2022-08-05T11:32:00Z",
 "content": "TOKYOChinas \r\nfiring of missiles near Japan has left little doubt that Tokyo would be pulled into any potential war over Taiwanand would be part of the U.S.-led alliance likely to defend the island.C… [+402 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Laura Saunders",
 "title": "Got Hidden Income? The IRS May Get More Money to Find You",
 "description": "The agency could get billions of extra dollars to go after high-earning tax cheats. Here are the areas auditors may focus on if they get more resources.",
 "url": "https://www.wsj.com/articles/got-hidden-income-the-irs-may-get-more-money-to-find-you-11659691827",
 "urlToImage": "https://images.wsj.net/im-597599/social",
 "publishedAt": "2022-08-05T09:30:00Z",
 "content": "If Congress passes the Inflation Reduction Act, Americans should expect more IRS auditsespecially on filers making more than $400,000 a year. \r\nThe surprise agreement between Sens. Chuck Schumer (D.,… [+287 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Peggy Noonan",
 "title": "NOONAN: Why Pro-Lifers Lost...",
 "description": "NOONAN: Why Pro-Lifers Lost...\r\n\n \n \n \n (Second column, 9th story, link)\r\n\n \r\n\n \r\n\n \n Related stories:How abortion rights were won in conservative Kansas...",
 "url": "https://www.wsj.com/articles/why-the-pro-lifers-lost-in-kansas-state-constitution-referendum-abortion-roe-dobbs-republican-party-messaging-mothers-15-week-11659644420",
 "urlToImage": "https://images.wsj.net/im-597956/social",
 "publishedAt": "2022-08-05T01:13:38Z",
 "content": "Peggy Noonan is an opinion columnist at the Wall Street Journal where her column, \"Declarations,\" has run since 2000. \r\nShe was awarded the Pulitzer Prize for Commentary in 2017.  A political analyst… [+1168 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Kathryn Hardison",
 "title": "Beyond Meat Plans to Lay Off 4% of Global Workforce",
 "description": "The company’s CEO says job cuts are part of a plan to reduce costs as inflation prompts consumers to buy less-expensive protein.",
 "url": "https://www.wsj.com/articles/beyond-meat-plans-to-lay-off-4-of-global-workforce-11659654564",
 "urlToImage": "https://images.wsj.net/im-598251/social",
 "publishedAt": "2022-08-04T23:42:00Z",
 "content": "Beyond Meat is cutting 4% of its global workforce, saying the layoffs are part of its plan to reduce costs as inflation prompts consumers to buy less-expensive protein.\r\nThe California-based company,… [+260 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "The Wall Street Journal",
 "title": "The Mets’ Big Strategy to Win the World Series",
 "description": "Daniel Vogelbach isn’t just baseball’s burliest folk hero. He’s also a key puzzle piece for the New York Mets, who invested in platoon players to boost them down the stretch.",
 "url": "https://www.wsj.com/articles/mets-daniel-vogelbach-darin-ruf-platoon-11659645090",
 "urlToImage": "https://images.wsj.net/im-597762/social",
 "publishedAt": "2022-08-04T20:40:00Z",
 "content": "The gag around the Citi Field clubhouse these days is that the New York Mets recent acquisition Daniel Vogelbach is secretly a slap hitter. Thats because most of the time hes been on base for his new… [+367 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Lillian Rizzo",
 "title": "Warner Bros. Discovery Swings to Loss Amid Merger Charges",
 "description": "The newly combined media giant said the second-quarter loss was partly due to charges related to the recent merger. The company had 92.1 million streaming subscribers, up about 1.7 million from the first quarter.",
 "url": "https://www.wsj.com/articles/warner-bros-discovery-swings-to-loss-amid-merger-charges-11659645564",
 "urlToImage": "https://images.wsj.net/im-595651/social",
 "publishedAt": "2022-08-04T20:39:00Z",
 "content": "Warner Bros. Discovery swung to a $3.42 billion loss in the second quarter, which the company said was partly due to charges related to the recent merger that created the media giant. \r\nIn its first … [+291 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Alexander Gladstone",
 "title": "AMC to Issue Dividend in Form of ‘Ape’ Preferred Shares",
 "description": "Cinema chain’s move is a workaround after it failed to garner shareholder approval to let it issue more common shares",
 "url": "https://www.wsj.com/articles/amc-to-issue-dividend-in-form-of-ape-preferred-shares-11659643261",
 "urlToImage": "https://images.wsj.net/im-597994/social",
 "publishedAt": "2022-08-04T20:01:00Z",
 "content": "AMC Entertainment Holdings Inc. said Thursday that it plans to issue a dividend to all common shareholders in the form of preferred shares, after it had difficulty issuing more common shares.\r\nThe ci… [+374 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Dominique Mosbergen",
 "title": "Biden Officials Declare Monkeypox a Public Health Emergency",
 "description": "The declaration aims to speed up vaccine distribution as confirmed or suspected cases in the U.S. surpassed 6,600.",
 "url": "https://www.wsj.com/articles/biden-officials-declare-monkeypox-a-public-health-emergency-11659637081",
 "urlToImage": "https://images.wsj.net/im-597862/social",
 "publishedAt": "2022-08-04T18:18:00Z",
 "content": "U.S. health officials on Thursday declared monkeypox \r\na public-health emergency, as cases continue to mount across the country, a move aimed at speeding up distribution of monkeypox vaccine. The nat… [+334 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "wsj",
 "title": "Heat-Related Deaths Soar in Phoenix...",
 "description": "Phoenix, like many cities, is trying to manage the rising risks of injury or even death during more frequent heat waves.",
 "url": "https://www.wsj.com/articles/as-heat-related-deaths-soar-phoenix-tries-to-keep-residents-cool-11659569060",
 "urlToImage": "https://images.wsj.net/im-594054/social",
 "publishedAt": "2022-08-04T16:00:05Z",
 "content": "As Heat-Related Deaths Soar, Phoenix Tries to Keep Residents Cool\nListen to article\n(2 minutes)\nPHOENIX—As the temperature hovered around 113 degrees Fahrenheit here on a recent Tuesday, Yvonne Pasto… [+868 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "James Freeman",
 "title": "NFIB: Small-Business Employment Declines - The Wall Street Journal",
 "description": "Latest monthly survey finds owners still want to hire but can’t find enough workers.",
 "url": "https://www.wsj.com/articles/nfib-small-business-employment-declines-11659628410",
 "urlToImage": "https://images.wsj.net/im-597606/social",
 "publishedAt": "2022-08-04T15:53:00Z",
 "content": "For the first time this year, employment at small U.S. firms declined last month. Thats according to the latest jobs report from the National Federation of Independent Business, due out later today. … [+575 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Andrew Duehren",
 "title": "Kyrsten Sinema, GOP Fuel Fears for Fate of Democrats’ Climate Plan - The Wall Street Journal",
 "description": "<ol><li>Kyrsten Sinema, GOP Fuel Fears for Fate of Democrats’ Climate Plan  The Wall Street Journal\r\n</li><li>Manchin votes align closely with Schumer, liberal Democrats Warren, Sanders despite portrayal as moderate  Fox News\r\n</li><li>Coal industry ‘shocked …",
 "url": "https://www.wsj.com/articles/kyrsten-sinema-gop-fuel-fears-for-fate-of-democrats-climate-plan-11659618001",
 "urlToImage": "https://images.wsj.net/im-597309/social",
 "publishedAt": "2022-08-04T13:00:00Z",
 "content": "WASHINGTONDemocrats are bracing for the possibility of last-minute changes to \r\ntheir climate-and-tax agreement, while hoping to avoid poison pills that could upset the delicate product of monthslong… [+400 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Shen Lu",
 "title": "Alibaba Posts First Revenue Decline Since Going Public",
 "description": "The company blamed China’s Covid outbreak for the slim drop, saying its main domestic e-commerce business was hit by pandemic-related supply chain and logistics disruptions in April and May.",
 "url": "https://www.wsj.com/articles/alibaba-posts-first-revenue-drop-since-going-public-11659614187",
 "urlToImage": "https://images.wsj.net/im-597409/social",
 "publishedAt": "2022-08-04T12:18:00Z",
 "content": "Chinas leading e-commerce company Alibaba Group Holding Ltd. posted its first quarterly revenue decline since \r\nits 2014 listing in a sign of how its era of explosive growth may be coming to an end.T… [+177 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Callum Borchers",
 "title": "The $400,000-a-Year Assistant...",
 "description": "Wealthy executives are shelling out six figures for sophisticated aides smart enough to handle complicated tasks yet humble enough to take on tedious ones",
 "url": "https://www.wsj.com/articles/paying-400-000-for-an-executive-assistant-do-it-all-aides-are-pricier-than-ever-11659553138",
 "urlToImage": "https://images.wsj.net/im-596611/social",
 "publishedAt": "2022-08-04T12:10:39Z",
 "content": "In the penthouse of society, there is a crisis: no one to charter the jet, too few aides with the versatility to navigate earnings reports along with the wine lists and, for heavens sake, who is goin… [+6069 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Dasl Yoon and Timothy W. Martin",
 "title": "Vacationing South Korean President Won’t Meet Pelosi in Person - The Wall Street Journal",
 "description": "<ol><li>Vacationing South Korean President Won’t Meet Pelosi in Person  The Wall Street Journal\r\n</li><li>LIVE: Nancy Pelosi and South Korea assembly speaker address media  Reuters\r\n</li><li>South Korean president accused of avoiding Nancy Pelosi in bid to pl…",
 "url": "https://www.wsj.com/articles/vacationing-south-korean-president-wont-meet-pelosi-in-person-11659594726",
 "urlToImage": "https://images.wsj.net/im-597344/social",
 "publishedAt": "2022-08-04T06:32:00Z",
 "content": "SEOULSouth Koreas president, in the middle of his summer vacation in Seoul, doesnt plan to meet face-to-face with visiting House Speaker \r\nNancy Pelosi, likely becoming the only Asian leader on the U… [+320 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Joseph De Avila and Lauryn Azu",
 "title": "ANOTHER ONE: Beyoncé Removes Usage of Kelis 'Milkshake' After Criticism...",
 "description": "Kelis said she wasn’t informed that an interpolation of her 2003 hit would appear on Beyoncé’s seventh studio album ‘Renaissance.’",
 "url": "https://www.wsj.com/articles/beyonce-removes-milkshake-from-energy-song-kelis-11659549093",
 "urlToImage": "https://images.wsj.net/im-596521/social",
 "publishedAt": "2022-08-04T00:28:39Z",
 "content": "Beyoncé removed an interpolation of the 2003 song Milkshake by Kelis from her new track Energy, in the latest controversy surrounding the Grammy Award-winning singers seventh studio album Renaissance… [+329 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Katherine Clarke",
 "title": "Side-by-Side Florida Mansions Built for Identical Twins Ask $54 Million...",
 "description": "Side-by-Side Florida Mansions Built for Identical Twins Ask $54 Million...\r\n\n \n \n \n (First column, 21st story, link)",
 "url": "https://www.wsj.com/articles/side-by-side-florida-mansions-built-for-identical-twins-ask-54-million-11659557613",
 "urlToImage": "https://images.wsj.net/im-596091/social",
 "publishedAt": "2022-08-04T00:28:39Z",
 "content": "A pair of Florida mansions built for identical twins is coming on the market for $54 million.The homes sit on more than 11 acres in Southwest Ranches, an affluent town roughly 20 miles from Fort Laud… [+3486 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Sarah Nassauer",
 "title": "Walmart Lays Off Hundreds of Corporate Workers",
 "description": "The retailer is restructuring headquarters operations after warning of profit troubles.",
 "url": "https://www.wsj.com/articles/walmart-lays-off-hundreds-of-corporate-workers-11659558590",
 "urlToImage": "https://images.wsj.net/im-597059/social",
 "publishedAt": "2022-08-03T20:31:47Z",
 "content": "Walmart is cutting hundreds of corporate roles in a restructuring effort, according to people familiar with the matter, a week after \r\nthe retail giant warned of falling profits.The retailer began no… [+288 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Alison Sider",
 "title": "Transportation Department Seeks to Tighten Rules for Airline Refunds",
 "description": "The proposed rules come as transportation officials have grown increasingly frustrated with airlines over delays and cancellations.",
 "url": "https://www.wsj.com/articles/transportation-department-seeks-to-tighten-rules-for-airline-refunds-11659556601",
 "urlToImage": "https://images.wsj.net/im-596917/social",
 "publishedAt": "2022-08-03T19:56:00Z",
 "content": "U.S. transportation officials say they want to make sure travelers can get their money back when flight plans change drastically, proposing stricter rules governing when airlines have to reimburse cu… [+344 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "The Wall Street Journal",
 "title": "Why Monkeypox Is a Global Health Threat",
 "description": "The World Health Organization has declared monkeypox a global health emergency. But what is it — and how does it spread? WSJ explains what you should look out for and why experts say the virus isn’t likely to become the next pandemic. Illustration: Adele Morg…",
 "url": "https://www.wsj.com/video/why-monkeypox-is-a-global-health-threat/3FFAF318-C0CF-486C-986E-6A794DE6C8EF.html",
 "urlToImage": "http://images.wsj.net/im-596305?width=1280&height=720",
 "publishedAt": "2022-08-03T17:34:53Z",
 "content": "Electric Scooters: Israels Two-Wheeled Solution to Traffic and Sabbath\r\n12/20/2018Electric-scooter rental companies are hitting speed bumps in the U.S. over safety and other concerns. But in Tel Aviv… [+188 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "The Wall Street Journal",
 "title": "Phil Mickelson and 10 Other LIV Golfers File Antitrust Lawsuit Against PGA Tour",
 "description": "Mickelson leads a group of LIV Golf players suing over their suspensions, with three also seeking a temporary restraining order that would allow them to play in the Tour’s FedEx Cup Playoffs.",
 "url": "https://www.wsj.com/articles/liv-golf-phil-mickelson-sue-pga-tour-antitrust-fedex-cup-playoffs-11659544753",
 "urlToImage": "https://images.wsj.net/im-596753/social",
 "publishedAt": "2022-08-03T16:44:00Z",
 "content": "Eleven golfers on the Saudi-backed LIV Golf circuit\r\nincluding Phil Mickelson and Bryson DeChambeaufiled an antitrust lawsuit against the PGA Tour Wednesday challenging their suspensions, the opening… [+475 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Sarah Krouse, Suzanne Vranica and Jessica Toonkel",
 "title": "Netflix Is Scrambling to Learn the Ad Business It Long Disdained - The Wall Street Journal",
 "description": "Reed Hastings insisted on focusing on subscriptions until competitors started nibbling away at his business model.",
 "url": "https://www.wsj.com/articles/netflix-ads-plan-streaming-business-11659538834",
 "urlToImage": "https://images.wsj.net/im-595962/social",
 "publishedAt": "2022-08-03T15:29:00Z",
 "content": "For years, Netflix boss Reed Hastings was emphatic that the streaming giant wouldnt show ads in its programming. Late last year, the company did a 180. Netflix didnt just want to enter the ad busines… [+221 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Paul Vigna",
 "title": "Michael Saylor Bet Billions on Bitcoin and Lost",
 "description": "The longtime MicroStrategy CEO, and perhaps the biggest bitcoin bull, steps down.",
 "url": "https://www.wsj.com/articles/michael-saylor-bet-billions-on-bitcoin-and-lost-11659538890",
 "urlToImage": "https://images.wsj.net/im-595916/social",
 "publishedAt": "2022-08-03T15:01:00Z",
 "content": "If you ask Michael Saylor why he bet the future of his company on bitcoin, hell tell you he didnt have a choice.\r\nIn 2020, MicroStrategy stock was stagnant, and the tech company struggled to compete … [+119 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Yaroslav Trofimov | Photographs by Manu Brabo for The Wall Street Journal",
 "title": "Ukraine Braces for Brutal Fight for Occupied Southern Regions...",
 "description": "Ukraine Braces for Brutal Fight for Occupied Southern Regions...\r\n\n \n \n \n (Third column, 8th story, link)\r\n\n \r\n\n \r\n\n \n Related stories:USA targets Putin girlfriend...\r\nDid Russia fund and support CA secession movement?\r\n\n \r\n\n \n \n Drudge Report Feed needs your…",
 "url": "https://www.wsj.com/articles/ukraine-braces-for-brutal-fight-for-occupied-southern-regions-as-referendum-looms-11659519001",
 "urlToImage": "https://images.wsj.net/im-595879/social",
 "publishedAt": "2022-08-03T10:58:39Z",
 "content": "KYSELIVKA, UkraineWhen Ukrainian troops deployed in Kyselivka on the Kherson front line in April, the villages empty homes provided some protection from relentless Russian shelling.\r\nNow, there arent… [+251 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Dan Gallagher",
 "title": "クラウド大手3社、莫大な設備投資は継続不可能",
 "description": "News Corp is a global, diversified media and information services company focused on creating and distributing authoritative and engaging content and other products and services.",
 "url": "https://jp.wsj.com/articles/cloud-giants-cant-keep-making-rain-11659507347",
 "urlToImage": "https://images.wsj.net/im-595102/social",
 "publishedAt": "2022-08-03T10:46:47Z",
 "content": "34-6238\r\n1-3\r\n4-6121-3304931236122552\r\n3CFO202132CFO7-9\r\nCFOAI6101330\r\n3\r\nCopyright ©2022 Dow Jones &amp; Company, Inc. All Rights Reserved. 87990cbe856818d5eddac44c7b1cdeb8"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Alan Cullison",
 "title": "U.S. Sanctions Woman It Calls Vladimir Putin’s Girlfriend - The Wall Street Journal",
 "description": "<ol><li>U.S. Sanctions Woman It Calls Vladimir Putin’s Girlfriend  The Wall Street Journal\r\n</li><li>U.S. Sanctions Putin's Alleged Mistress  NBC News\r\n</li><li>US sanctions Putin's reputed girlfriend  CNN\r\n</li><li>Vladimir Putin's rumored girlfriend Alina K…",
 "url": "https://www.wsj.com/articles/u-s-sanctions-woman-it-calls-vladimir-putins-girlfriend-11659489645",
 "urlToImage": "https://images.wsj.net/im-595871/social",
 "publishedAt": "2022-08-03T01:20:00Z",
 "content": "WASHINGTONThe Treasury Department unveiled a fresh raft of sanctions on Russian companies and people around Vladimir Putin on Tuesday, including a famed former Russian Olympic gymnast whom the U.S. g… [+404 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Asa Fitch",
 "title": "Chip Maker AMD Prospers as Rival Intel Struggles",
 "description": "Sales surged at Advanced Micro Devices despite woes in the personal-computer market.",
 "url": "https://www.wsj.com/articles/chip-maker-amd-prospers-as-rival-intel-struggles-11659473116",
 "urlToImage": "https://images.wsj.net/im-592029/social",
 "publishedAt": "2022-08-02T20:45:00Z",
 "content": "Advanced Micro Devices reported a sharp increase in quarterly sales, driven by strength in its datacenter business where rival Intel has been stumbling, but issued a muted outlook for the current per… [+238 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Preetika Rana",
 "title": "Airbnb Swings to Profit as Rentals Remain Strong Despite Inflation Pressure",
 "description": "The company also projects record third-quarter revenue on the strength of summer bookings.",
 "url": "https://www.wsj.com/articles/airbnb-swings-to-profit-as-rentals-remain-strong-despite-inflation-pressure-11659471103",
 "urlToImage": "https://images.wsj.net/im-589782/social",
 "publishedAt": "2022-08-02T20:11:00Z",
 "content": "Airbnb swung to a profit in the second quarter on the back of strong revenue, as people continued to book suburban rentals despite hosts raising prices. It projects record revenue in the current peri… [+232 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Andrew Ackerman and AnnaMaria Andriotis",
 "title": "Equifax Sent Lenders Inaccurate Credit Scores on Millions of Consumers - The Wall Street Journal",
 "description": "During a three-week period this year, the credit reporting company sent faulty scores to lenders big and small, resulting in higher interest rates and denied applications.",
 "url": "https://www.wsj.com/articles/equifax-sent-lenders-inaccurate-credit-scores-on-millions-of-consumers-11659467483",
 "urlToImage": "https://images.wsj.net/im-595194/social",
 "publishedAt": "2022-08-02T19:11:00Z",
 "content": "Equifax provided inaccurate credit scores on millions of U.S. consumers seeking loans during a three-week period earlier this year, according to bank executives and others familiar with the errors.\r\n… [+445 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Benjamin Katz",
 "title": "British Airways Halts Ticket Sales on Domestic, European Heathrow Routes - The Wall Street Journal",
 "description": "<ol><li>British Airways Halts Ticket Sales on Domestic, European Heathrow Routes  The Wall Street Journal\r\n</li><li>British Airways suspends sales of short-haul tickets from London Heathrow - BBC News  BBC News\r\n</li><li>British Airways suspends the sale of s…",
 "url": "https://www.wsj.com/articles/british-airways-halts-short-haul-ticket-sales-amid-heathrow-passenger-cap-11659440564",
 "urlToImage": "https://images.wsj.net/im-595493/social",
 "publishedAt": "2022-08-02T18:07:00Z",
 "content": "LONDONBritish Airways is temporarily halting ticket sales on all domestic and European routes from London Heathrow Airport to cope with passenger restrictions at its primary hub, adding to the fallou… [+419 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Sean McLain",
 "title": "Rivian Says Senate Climate Deal Puts It at Disadvantage",
 "description": "The electric-vehicle startup is warning that most of its vehicles would be ineligible for a $7,500 tax credit under the proposed changes.",
 "url": "https://www.wsj.com/articles/rivian-says-senate-climate-deal-puts-it-at-disadvantage-11659460641",
 "urlToImage": "https://images.wsj.net/im-595625/social",
 "publishedAt": "2022-08-02T17:17:00Z",
 "content": "Electric-vehicle startup Rivian Automotive Inc. is warning that planned revisions to the EV tax credit would put the young car maker at a disadvantage to more-established competitors.\r\nThe proposed c… [+287 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Eliot Brown",
 "title": "SoftBank Emerges as a Big Loser of the Tech Downturn. Again. - The Wall Street Journal",
 "description": "CEO Masayoshi Son pledged to curb his aggressive investment bets yet plunged into startups last year at the market top. He will have to engineer his next comeback without key lieutenants.",
 "url": "https://www.wsj.com/articles/softbank-tech-downturn-startups-losses-vision-fund-masayoshi-son-11659456842",
 "urlToImage": "https://images.wsj.net/im-591922/social",
 "publishedAt": "2022-08-02T16:28:00Z",
 "content": "Early last year, Masayoshi Son addressed his staff on a video call. At the time, startup companies were surging in value, but SoftBank Group Corp. wasnt investing in enough of them.\r\nHis executives n… [+118 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Jan Wolfe",
 "title": "Stephen King Testifies Against Book-Publishing Merger - The Wall Street Journal",
 "description": "<ol><li>Stephen King Testifies Against Book-Publishing Merger  The Wall Street Journal\r\n</li><li>Stephen King to testify in federal court battle against publishing giants' merger  NEWS CENTER Maine\r\n</li><li>Stephen King testifies for government in books merg…",
 "url": "https://www.wsj.com/articles/stephen-king-testifies-against-book-publishing-merger-11659457467",
 "urlToImage": "https://images.wsj.net/im-595557/social",
 "publishedAt": "2022-08-02T16:24:00Z",
 "content": "WASHINGTONFamed horror novelist Stephen King took the witness stand in \r\na federal antitrust case on Tuesday, testifying that up-and-coming authors would be harmed if his longtime publisher Simon &am… [+264 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Cheryl Winokur Munk",
 "title": "How Cyber Chiefs Cut Through Marketing Noise",
 "description": "In a crowded cybersecurity market, tech providers make basic mistakes in trying to win business, CISOs say",
 "url": "https://www.wsj.com/articles/how-cyber-chiefs-cut-through-marketing-noise-11659432600",
 "urlToImage": "https://images.wsj.net/im-594235/social",
 "publishedAt": "2022-08-02T10:47:37Z",
 "content": "Hundreds of cybersecurity companies compete for attention from chief information security officers through email solicitations, cold calls and tech conferences.Here are five strategies corporate secu… [+5191 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Rajesh Roy",
 "title": "Reliance’s $11 Billion Bid Wins Lion’s Share of 5G Spectrum in India Auction",
 "description": "The sale of airwaves for high-speed platforms exceeded forecasts, lifting hopes of a rapid rollout as New Delhi seeks to close a technology gap with other countries, including China.",
 "url": "https://www.wsj.com/articles/reliances-11-billion-bid-wins-lions-share-of-5g-spectrum-in-india-auction-11659433424",
 "urlToImage": "https://images.wsj.net/im-595437/social",
 "publishedAt": "2022-08-02T09:45:55Z",
 "content": "NEW DELHIReliance Group emerged as the biggest buyer in the Indian governments first auction of 5G spectrum, offering about $11 billion over 20 years for the rights to airwaves as it seeks to cement … [+565 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Dominique Mosbergen",
 "title": "Monkeypox Patients Report Excruciating Pain and Lack of Guidance as U.S. Cases Mount",
 "description": "Some people say they were declined testing before being hospitalized with pain and high fever.",
 "url": "https://www.wsj.com/articles/monkeypox-patients-report-excruciating-pain-and-lack-of-guidance-as-u-s-cases-mount-11659432602",
 "urlToImage": "https://images.wsj.net/im-594033/social",
 "publishedAt": "2022-08-02T09:40:46Z",
 "content": "Taber Feltner, a research associate in Iowa City, Iowa, said he noticed some \r\nworrying symptoms in mid-July, a few days after returning home from a trip to Chicago.A rash developed in his groin, whi… [+178 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Eliot Brown",
 "title": "London-Based Hedge Fund Reels as Tech Bet Goes Wrong - The Wall Street Journal",
 "description": "Marcho Partners lost 84% in the year’s first half, when Shopify and other growth stocks fell sharply.",
 "url": "https://www.wsj.com/articles/london-based-hedge-fund-reels-as-tech-bet-goes-wrong-11659395642",
 "urlToImage": "https://images.wsj.net/im-594924/social",
 "publishedAt": "2022-08-02T09:30:00Z",
 "content": "Stock-picking hedge funds around the world are hurting amid the market rout. \r\nAnd then there is Marcho Partners a tech-focused fund founded by a onetime deputy of tech investor Chamath Palihapitiya.… [+255 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Rebecca Picciotto",
 "title": "WeWork Joins Rush of Tech Companies Into Office Software as Its Shares Sag - The Wall Street Journal",
 "description": "Cisco, Honeywell and startups say their tech services help landlords and tenants adjust to the hybrid workplace",
 "url": "https://www.wsj.com/articles/wework-joins-rush-of-tech-companies-into-office-software-as-its-shares-sag-11659432601",
 "urlToImage": "https://images.wsj.net/im-595070/social",
 "publishedAt": "2022-08-02T09:30:00Z",
 "content": "WeWork Inc.\r\nis hoping to boost its drooping share price by joining the growing number of technology companies selling apps, data tools and other software to landlords and office tenants trying to ad… [+4810 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Alexa Corse",
 "title": "Guy Reffitt, the First Jan. 6 Rioter Convicted by Jury, Gets Seven-Year Sentence - The Wall Street Journal",
 "description": "<ol><li>Guy Reffitt, the First Jan. 6 Rioter Convicted by Jury, Gets Seven-Year Sentence  The Wall Street Journal\r\n</li><li>Jan 6. rioter who carried gun to US Capitol and threatened Nancy Pelosi gets more than 7 years in prison  CNN\r\n</li><li>Texas man who b…",
 "url": "https://www.wsj.com/articles/first-jan-6-rioter-convicted-by-jury-is-sentenced-to-87-months-11659384831",
 "urlToImage": "https://images.wsj.net/im-594760/social",
 "publishedAt": "2022-08-02T01:28:00Z",
 "content": "A Texas man was sentenced to seven-and-a-quarter years in prison for provoking the crowd at the U.S. Capitol on Jan. 6, 2021, and other crimes, representing the longest sentence given to a Jan. 6 def… [+302 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Jessica Donati and Nancy A. Youssef",
 "title": "U.S. Carried Out First Known Counterrorism Strike in Afghanistan Since Exit - The Wall Street Journal",
 "description": "<ol><li>U.S. Carried Out First Known Counterrorism Strike in Afghanistan Since Exit  The Wall Street Journal\r\n</li><li>Taliban condemns drone strike as violation of U.S. troop withdrawal agreement  Reuters.com\r\n</li><li>View Full Coverage on Google News</li><…",
 "url": "https://www.wsj.com/articles/u-s-carried-out-first-known-counterrorism-strike-in-afghanistan-since-exit-11659391683",
 "urlToImage": "https://images.wsj.net/im-595297/social",
 "publishedAt": "2022-08-01T22:35:00Z",
 "content": "WASHINGTONU.S. congressional officials said a drone strike in Afghanistan killed Al Qaeda leader Ayman al-Zawahiri, a founding member of the jihadist movement and one of the key strategists behind an… [+435 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Angus Loten",
 "title": "Automation Tech Company UiPath Acquires AI Startup Re:infer - The Wall Street Journal",
 "description": "The deal comes as demand increases for software automation, which can take up the slack caused by hiring freezes or spending cuts",
 "url": "https://www.wsj.com/articles/automation-tech-company-uipath-acquires-ai-startup-re-infer-11659393146",
 "urlToImage": "https://images.wsj.net/im-595225/social",
 "publishedAt": "2022-08-01T22:32:00Z",
 "content": "UiPath Inc.,\r\na software automation company, on Monday said it had acquired artificial intelligence startup Re:infer Ltd., a move that comes as recession-wary employers look to cut costs by automatin… [+3679 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Jonathan Randles",
 "title": "Sandy Hook Families Accuse Alex Jones of Diverting Funds From Infowars Parent Company",
 "description": "Lawyers representing families who have sued Alex Jones for defamation say they believe he siphoned significant sums from Infowars’ parent company before it filed for bankruptcy",
 "url": "https://www.wsj.com/articles/sandy-hook-families-accuse-alex-jones-of-diverting-funds-from-infowars-parent-company-11659392690",
 "urlToImage": "https://images.wsj.net/im-595293/social",
 "publishedAt": "2022-08-01T22:24:00Z",
 "content": "Families of Sandy Hook victims who are suing Alex Jones for defamation accused the conspiracy theorist of siphoning significant amounts of money from Infowars parent company before he put the busines… [+331 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Cara Lombardo",
 "title": "TD Bank Nears Deal to Buy Cowen",
 "description": "Toronto-Dominion Bank is close to a more than $1 billion deal to buy investment bank Cowen, according to people familiar with the matter.",
 "url": "https://www.wsj.com/articles/td-bank-nears-deal-to-buy-cowen-11659391934",
 "urlToImage": "https://images.wsj.net/im-595310/social",
 "publishedAt": "2022-08-01T22:12:00Z",
 "content": "Toronto-Dominion Bank is close to a more than $1 billion deal to buy investment bank Cowen according to people familiar with the matter.\r\nA deal valuing Cowen at around $39 a share could be unveiled … [+210 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Dana Cimilluca",
 "title": "Centerview Bankers Depart to Form Tech-Focused Deal-Advisory Boutique Tidal Partners - The Wall Street Journal",
 "description": "Veteran deal makers David Handler and David Neequaye have secured the backing of two well-connected firms on Wall Street, Consello and 25madison, according to people familiar with the matter.",
 "url": "https://www.wsj.com/articles/centerview-bankers-depart-to-form-tech-focused-deal-advisory-boutique-tidal-partners-11659384659",
 "urlToImage": "https://images.wsj.net/im-595112/social",
 "publishedAt": "2022-08-01T20:11:00Z",
 "content": "A pair of investment bankers is leaving Centerview Partners to start a firm focused on advising technology companies on mergers and acquisitions.\r\nThe men, veteran deal makers David Handler and David… [+335 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Sarah E. Needleman",
 "title": "Pinterest Reports Lowest Revenue Growth in Two Years",
 "description": "Pinterest joins the expanding ranks of tech companies that are trying to keep a tighter control on some spending and has moved to slow the pace of hiring significantly",
 "url": "https://www.wsj.com/articles/pinterest-reports-lowest-revenue-growth-in-two-years-11659384647",
 "urlToImage": "https://images.wsj.net/im-593058/social",
 "publishedAt": "2022-08-01T20:10:00Z",
 "content": "Pinterest kicked off the era under new Chief Executive Bill Ready by posting its lowest revenue growth in two years and signaling a further slowdown, reflecting \r\nthe weakened digital-advertising mar… [+347 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Charity L. Scott",
 "title": "Facing Labor Shortages, Pella Reinvents the Company Town in Rural Iowa",
 "description": "The maker of doors and windows is spending $30 million hoping to get people to move to its headquarters; ‘We just didn’t have the amenities’",
 "url": "https://www.wsj.com/articles/labor-shortage-unemployment-pella-iowa-11659364081",
 "urlToImage": "https://images.wsj.net/im-594190/social",
 "publishedAt": "2022-08-01T14:36:48Z",
 "content": "PELLA, IowaPella Corp. has offices and manufacturing plants in more than 30 cities across the U.S. and Canada. \r\nBut one of the toughest jobs, say executives at this closely held maker of windows and… [+133 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Connor Hart",
 "title": "Celsius Energy Drink Gets $550 Million Investment From PepsiCo",
 "description": "Deal with Celsius Holdings, which has a market capitalization of more than $6 billion, expands the soda and snacks company’s bet on the energy drinks market.",
 "url": "https://www.wsj.com/articles/celsius-energy-drink-gets-550-million-investment-from-pepsico-11659363158",
 "urlToImage": "https://images.wsj.net/im-594701/social",
 "publishedAt": "2022-08-01T14:12:00Z",
 "content": "PepsiCo is investing $550 million for a stake in the company behind the Celsius energy drink that has generated buzz on social media, expanding the soda and snacks companys bet on the energy drinks m… [+261 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Ginger Adams Otis",
 "title": "Nichelle Nichols, Who Played Uhura on ‘Star Trek,’ Dies at 89 - The Wall Street Journal",
 "description": "<ol><li>Nichelle Nichols, Who Played Uhura on ‘Star Trek,’ Dies at 89  The Wall Street Journal\r\n</li><li>Nichelle Nichols, trailblazing 'Star Trek' actress, dies at 89  CNN\r\n</li><li>'Star Trek' actress Nichelle Nichols dead at 89  Fox News\r\n</li><li>Nichelle…",
 "url": "https://www.wsj.com/articles/nichelle-nichols-who-played-uhura-on-star-trek-dies-at-89-11659299710",
 "urlToImage": "https://images.wsj.net/im-594541/social",
 "publishedAt": "2022-08-01T14:00:00Z",
 "content": "Nichelle Nichols, the trailblazing Star Trek actress who played Lieutenant Uhura and shared one of the first interracial kisses on prime-time TV, died Saturday, according to her family. She was 89 ye… [+207 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Kate O’Keeffe and Heather Somerville",
 "title": "Self-Driving Truck Accident Draws Attention to Safety...",
 "description": "The leading autonomous-truck developer blames human error, while analysts say it is the technology. Regulators are investigating.",
 "url": "https://www.wsj.com/articles/self-driving-truck-accident-draws-attention-to-safety-at-tusimple-11659346202",
 "urlToImage": "https://images.wsj.net/im-591288/social",
 "publishedAt": "2022-08-01T13:07:38Z",
 "content": "On April 6, an autonomously driven truck fitted with technology by TuSimple Holdings Inc. suddenly veered left, cut across the I-10 highway in Tucson, Ariz., and slammed into a cement barricade.\r\nThe… [+449 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Matthew Luxmoore, Jared Malsin and Alistair MacDonald",
 "title": "Ukraine Grain Shipment Departs for First Time Since Russian Invasion - The Wall Street Journal",
 "description": "<ol><li>Ukraine Grain Shipment Departs for First Time Since Russian Invasion  The Wall Street Journal\r\n</li><li>First grain shipment leaves Ukraine after months of Russian blockade amid food crisis  Fox News\r\n</li><li>First grain ship leaves Ukraine's Odesa p…",
 "url": "https://www.wsj.com/articles/ukraine-grain-shipment-departs-for-first-time-since-russian-invasion-11659338763",
 "urlToImage": "https://images.wsj.net/im-594668/social",
 "publishedAt": "2022-08-01T11:53:00Z",
 "content": "KYIV, UkraineUkraine dispatched its first grain shipment since the start of Russias invasion on Monday, under \r\na deal aimed at easing global food shortages.The ship departed the Odessa port carrying… [+298 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Will Feuer",
 "title": "Valvoline to Sell Its Lubricants Business to Aramco for $2.65 Billion - The Wall Street Journal",
 "description": "The move comes nearly a year after Valvoline said it planned to separate the segment from its retail-services business.",
 "url": "https://www.wsj.com/articles/valvoline-to-sell-its-lubricants-business-to-aramco-for-2-65-billion-11659352480",
 "urlToImage": "https://images.wsj.net/im-594673/social",
 "publishedAt": "2022-08-01T11:14:00Z",
 "content": "Valvoline said it had agreed to sell its global-products business for $2.65 billion in cash to Saudi Aramco, a move that comes nearly a year after Valvoline said it planned to separate the segment fr… [+280 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Sean McLain",
 "title": "Made-in-Vietnam Electric Vehicles Are Heading to the U.S. Market",
 "description": "VinFast is the latest startup to test American EV demand, and it brings a novel pricing strategy to keep consumer costs down.",
 "url": "https://www.wsj.com/articles/made-in-vietnam-electric-vehicles-are-heading-to-the-u-s-market-11659346381",
 "urlToImage": "https://images.wsj.net/im-594561/social",
 "publishedAt": "2022-08-01T09:33:00Z",
 "content": "Vietnams Vingroup JSC became a corporate juggernaut in its home country, operating everything from luxury resorts to hospitals, shopping malls and supermarkets.\r\nNow, it wants to break into the U.S. … [+115 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Eric Sylvers and Lucy Papachristou",
 "title": "From Pizzerias to Tech Startups, Ukrainian Refugees Trickle Into Europe’s Labor Market - The Wall Street Journal",
 "description": "At least 400,000 people who fled the Russian invasion have found work in Europe since the start of the war, offering in-demand skills, starting businesses and sometimes taking jobs that were proving hard to fill.",
 "url": "https://www.wsj.com/articles/from-pizzerias-to-tech-startups-ukrainian-refugees-trickle-into-europes-labor-market-11659346410",
 "urlToImage": "https://images.wsj.net/im-593139/social",
 "publishedAt": "2022-08-01T09:33:00Z",
 "content": "Galyna Paliychuk had big plans for 2022. She was going to write a book and develop a business she had recently started in her native Kyiv.\r\nWhile she was on a one-week visit with her sister in Berlin… [+189 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Ginger Adams Otis",
 "title": "Raging Northern California Wildfire Prompts Evacuations, State of Emergency - The Wall Street Journal",
 "description": "<ol><li>Raging Northern California Wildfire Prompts Evacuations, State of Emergency  The Wall Street Journal\r\n</li><li>California battles worst wildfire this year as flames scorch more than 51,000 acres  Fox News\r\n</li><li>News Wrap: Destructive Western wildf…",
 "url": "https://www.wsj.com/articles/mckinney-fire-northern-california-wildfire-evacuations-11659289983",
 "urlToImage": "https://images.wsj.net/im-594588/social",
 "publishedAt": "2022-07-31T23:06:00Z",
 "content": "A fast-moving wildfire in Northern California has scorched over 50,000 acres as of Sunday due to extreme heat and erratic winds, officials said.\r\nThe National Weather Service issued so-called red fla… [+239 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Stephen Fidler and Daniel Michaels",
 "title": "War With Russia Enters New Phase as Ukraine Readies Southern Counterblow - The Wall Street Journal",
 "description": "<ol><li>War With Russia Enters New Phase as Ukraine Readies Southern Counterblow  The Wall Street Journal\r\n</li><li>Ukrainian offensive forces Russia to bolster troops in occupied south  The Guardian\r\n</li><li>The battle for Kherson and why it matters  Yahoo …",
 "url": "https://www.wsj.com/articles/war-ukraine-russia-kherson-11659281575",
 "urlToImage": "https://images.wsj.net/im-594456/social",
 "publishedAt": "2022-07-31T15:34:00Z",
 "content": "After months of Russian forces making painfully slow gains in Ukraines east, the focus of the war is moving to the south, where a potentially decisive phase of the conflict will play out. \r\nUkraine h… [+422 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Mark Maremont",
 "title": "Profits From NC Casino Go to Relatives of Politicians...",
 "description": "Relatives of U.S. Rep. Jim Clyburn and former South Carolina Gov. Nikki Haley got secret stakes in a company set to profit from a new tribal casino as it was seeking federal approval. Those involved deny any quid pro quo.",
 "url": "https://www.wsj.com/articles/slice-of-profits-from-north-carolina-casino-goes-to-relatives-of-politicians-11659268801",
 "urlToImage": "https://images.wsj.net/im-581989/social",
 "publishedAt": "2022-07-31T14:01:38Z",
 "content": "A company profiting from a new North Carolina tribal casino gave shares to politicians family members and high-profile political figures as the casinos backers were seeking federal approval for the p… [+316 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Ian Talley",
 "title": "U.S. Eyes Sanctions Against Global Network It Believes Is Shipping Iranian Oil - The Wall Street Journal",
 "description": "The U.S. believes a global network of companies has been helping Iran evade sanctions and export oil by blending it with Iraqi oil in ship-to-ship transfers at sea to hide its origins.",
 "url": "https://www.wsj.com/articles/u-s-eyes-sanctions-against-global-network-it-believes-is-shipping-iranian-oil-11659276000",
 "urlToImage": "https://images.wsj.net/im-593880/social",
 "publishedAt": "2022-07-31T14:00:00Z",
 "content": "WASHINGTONThe U.S. is considering sanctions that would target a United Arab Emirates-based businessman and a network of companies suspected of helping export Irans oil, part of a broader effort to es… [+517 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Nicole Nguyen",
 "title": "Why You Should—or Shouldn’t—Buy a Home Security Camera",
 "description": "Smart cameras from Ring, Nest, Arlo and others are useful, but you can protect your privacy and that of your neighbors by enabling encryption and other settings.",
 "url": "https://www.wsj.com/articles/why-you-shouldor-shouldntbuy-a-home-security-camera-11659239201",
 "urlToImage": "https://images.wsj.net/im-591968/social",
 "publishedAt": "2022-07-31T13:38:29Z",
 "content": "When a thief emptied my mailbox a few years ago, I scoured the neighborhood social network Nextdoor to see if it was part of a trend. My feed was full of video-doorbell footage, mostly of package pir… [+537 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Alan Cullison",
 "title": "Invasion of Ukraine Widens Spiritual Rifts Among Christians...",
 "description": "Invasion of Ukraine Widens Spiritual Rifts Among Christians...\r\n\n \n \n \n (Third column, 13th story, link)\r\n\n \r\n\n \r\n\n \n Related stories:Crazy Russians branded with red hot 'Z' poker to show love for Vlad...\r\nDrone explosion hits Black Sea Fleet HQ...\r\nMORE NUKE…",
 "url": "https://www.wsj.com/articles/russian-invasion-of-ukraine-widens-spiritual-rifts-among-the-nations-christians-11659265203",
 "urlToImage": "https://images.wsj.net/im-593990/social",
 "publishedAt": "2022-07-31T13:01:51Z",
 "content": "ZVANIVKA, UkraineAfter a solemn Mass in the Church of the Transformation, the Rev. Marco Fedak retired to a back room to review the latest news on his iPhone. Artillery rattled the church windows, an… [+185 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Ellen Gamerman",
 "title": "HBO’s ‘Industry’ Season 2 Has a Message for Bosses: Beware the Junior Bankers - The Wall Street Journal",
 "description": "HBO’s ‘Industry’ Season 2 Has a Message for Bosses: Beware the Junior Bankers  The Wall Street Journal",
 "url": "https://www.wsj.com/articles/industry-hbo-eric-bankers-11659239978",
 "urlToImage": "https://images.wsj.net/im-593301/social",
 "publishedAt": "2022-07-31T12:00:00Z",
 "content": "Many frightening forces converge in the finance drama Industry: the screaming bosses, the bad market bets and the unrelenting pressures. But perhaps scariest of all, at least to their superiors, are … [+465 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Cao Li",
 "title": "China Home Sales Plunge in July, as Mortgage Revolt Deters Buyers - The Wall Street Journal",
 "description": "<ol><li>China Home Sales Plunge in July, as Mortgage Revolt Deters Buyers  The Wall Street Journal\r\n</li><li>China's factory activity contracts unexpectedly in July as Covid flares up  CNBC\r\n</li><li>China Factory Activity Sees Shock Contraction on Covid Outb…",
 "url": "https://www.wsj.com/articles/china-home-sales-plunge-in-july-as-mortgage-revolt-deters-buyers-11659264152",
 "urlToImage": "https://images.wsj.net/im-593818/social",
 "publishedAt": "2022-07-31T11:16:00Z",
 "content": "A nascent two-month recovery in Chinas home sales ended in July, as a widespread mortgage revolt over concerns that ailing property developers wouldnt be able to deliver still-unfinished apartments w… [+257 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Yaroslav Trofimov and Matthew Luxmoore",
 "title": "Russia Pummels Ukraine’s Mykolaiv, Killing Top Businessman - The Wall Street Journal",
 "description": "The southern port city suffered some of the worst barrages of the war, while Moscow reported a drone attack on the headquarters of its Black Sea Fleet.",
 "url": "https://www.wsj.com/articles/russia-pummels-ukraines-mykolaiv-as-drone-hits-russian-black-sea-fleet-hq-11659257935",
 "urlToImage": "https://images.wsj.net/im-594442/social",
 "publishedAt": "2022-07-31T09:17:00Z",
 "content": "KYIV, UkraineRussia unleashed some of the worst barrages of the war on Ukraines southern port city of Mykolaiv on Sunday, killing among others the owner of one of the nations leading agricultural com… [+380 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Matthew Luxmoore",
 "title": "Ukraine Presses for Russia to Be Designated a Terrorist Sponsor After Attack on Prisoners - The Wall Street Journal",
 "description": "The demand came as Ukraine continued to push for an investigation into the killing of scores of Ukrainian prisoners of war in a strike on Russian-held territory, while Moscow accused Ukraine of targeting the facility with Western-made weapons.",
 "url": "https://www.wsj.com/articles/ukraine-presses-for-russia-to-be-designated-a-terrorist-sponsor-after-attack-on-prisoners-11659178402",
 "urlToImage": "https://images.wsj.net/im-594378/social",
 "publishedAt": "2022-07-30T20:09:00Z",
 "content": "KYIV, UkraineUkraine called for Russia to be designated a state sponsor of terrorism as it continued to push for an investigation into \r\nthe killing of scores of Ukrainian prisoners of war in a rocke… [+556 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Andrew Scurria",
 "title": "INFOWARS Files for Bankruptcy...",
 "description": "Free Speech Systems filed for chapter 11, the second time Infowars has turned to bankruptcy to try to resolve Sandy Hook families’ defamation lawsuits",
 "url": "https://www.wsj.com/articles/alex-jones-puts-infowars-parent-company-into-bankruptcy-during-texas-defamation-trial-11659152993",
 "urlToImage": "https://images.wsj.net/im-594375/social",
 "publishedAt": "2022-07-30T14:58:38Z",
 "content": "Alex Jones put the company behind his Infowars conspiracy site into bankruptcy on Friday as the broadcast host stands trial in Texas to determine how much he owes the families of Sandy Hook victims f… [+289 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Denise Roland",
 "title": "Vax Demand Soars, and Just One Small Danish Company Makes It...",
 "description": "Vax Demand Soars, and Just One Small Danish Company Makes It...\r\n\n \n \n \n (Third column, 9th story, link)\r\n\n \r\n\n \r\n\n \n Related stories:Spain, Brazil report first monkeypox-related deaths outside Africa...",
 "url": "https://www.wsj.com/articles/monkeypox-vaccine-supply-bavarian-nordic-fda-11659121737",
 "urlToImage": "https://images.wsj.net/im-592387/social",
 "publishedAt": "2022-07-30T13:58:39Z",
 "content": "A Copenhagen company worked for nearly two decades to develop a vaccine and only six governments bought it. Within the last few weeks, orders have come in from dozens of countries around the globe an… [+178 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Julie Jargon",
 "title": "Two-Week Program to Get Your Summer-Lazy Kids Off Screens and Ready for School",
 "description": "Many teens and tweens spent the past few months on screens, but don’t worry—bad tech habits can be broken in a few straightforward steps.",
 "url": "https://www.wsj.com/articles/two-week-program-to-get-your-summer-lazy-kids-off-screens-and-ready-for-school-11659116717",
 "urlToImage": "https://images.wsj.net/im-592931/social",
 "publishedAt": "2022-07-30T13:00:51Z",
 "content": "Cameron and Madison Louie had such a packed school year that when summer arrived, the siblings didnt want to do anything.\r\nEven though the Northern California-based Louie family has been in Hawaii al… [+258 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Francis X. Rocca",
 "title": "Pope Francis Says Church-Run Schools for Indigenous Children in Canada Practiced Genocide - The Wall Street Journal",
 "description": "<ol><li>Pope Francis Says Church-Run Schools for Indigenous Children in Canada Practiced Genocide  The Wall Street Journal\r\n</li><li>Pope Francis in Canada: Penitential pilgrimage ends in Iqaluit, Nunavut, amid criticism  The Washington Post\r\n</li><li>Pope ap…",
 "url": "https://www.wsj.com/articles/pope-francis-says-church-run-schools-for-indigenous-children-in-canada-practiced-genocide-11659167100",
 "urlToImage": "https://images.wsj.net/im-594377/social",
 "publishedAt": "2022-07-30T07:45:00Z",
 "content": "ABOARD THE PAPAL FLIGHTPope Francis said Canadas historical system of residential schools for indigenous children, many of which were run by Catholic organizations, amounted to a form of genocide.\r\nT… [+266 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Christopher Mims",
 "title": "The Microchip Era Is Giving Way to the Megachip Age",
 "description": "To continue making our gadgets more powerful, engineers have worked out a new way to get around the barriers to making microchips faster: Just make them bigger.",
 "url": "https://www.wsj.com/articles/chiplet-amd-intel-apple-asml-micron-ansys-arm-ucle-11659135707",
 "urlToImage": "https://images.wsj.net/im-593687/social",
 "publishedAt": "2022-07-30T04:04:34Z",
 "content": "If microchips were cities, the new, industrywide strategy for making them better could be summed up in one word: sprawl. In some case, the chips inside our most powerful devices are taking up so much… [+413 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Christopher M. Matthews and Katherine Blunt",
 "title": "America’s New Energy Crisis",
 "description": "How did this happen, and what will it take to fix it?",
 "url": "https://www.wsj.com/articles/americas-new-energy-crisis-11659153633",
 "urlToImage": "https://images.wsj.net/im-594048/social",
 "publishedAt": "2022-07-30T04:00:00Z",
 "content": "America is wrestling with the worst energy crisis in nearly five decades, a period of high prices and limited supply. What makes this crisis different than the troubles that roiled the country in the… [+487 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Andrew Tangel and Doug Cameron",
 "title": "Boeing Clears Hurdle for Resuming 787 Dreamliner Deliveries",
 "description": "The FAA approved the plane maker’s plan to address various quality problems with 787 production. The first 787 delivery is expected to occur within days.",
 "url": "https://www.wsj.com/articles/boeing-clears-hurdle-for-resuming-787-dreamliner-deliveries-11659145022",
 "urlToImage": "https://images.wsj.net/im-594354/social",
 "publishedAt": "2022-07-30T01:37:00Z",
 "content": "U.S. air-safety regulators signed off on a Boeing plan aimed at addressing problems with the 787 Dreamliner, a major step before the company \r\nrestarts deliveries of the aircraft, according to people… [+270 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Natalie Andrews",
 "title": "Nancy Pelosi to Travel to Asia With Possible Taiwan Stop, Despite China Warnings - The Wall Street Journal",
 "description": "<ol><li>Nancy Pelosi to Travel to Asia With Possible Taiwan Stop, Despite China Warnings  The Wall Street Journal\r\n</li><li>China accuses White House of lying about Biden bringing up genocide, forced labor with Xi  Fox News\r\n</li><li>Biden, Xi phone call cove…",
 "url": "https://www.wsj.com/articles/nancy-pelosi-to-travel-to-asia-with-possible-taiwan-stop-despite-china-warnings-11659122055",
 "urlToImage": "https://images.wsj.net/im-593864/social",
 "publishedAt": "2022-07-29T19:14:00Z",
 "content": "WASHINGTONHouse Speaker \r\nNancy Pelosi is planning to visit major U.S. allies in Asia, people familiar with the plans said, with arrangements for a possible stop in Taiwan that has drawn warnings fro… [+353 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Allison Prang and Lauryn Azu",
 "title": "Flash Flooding Hits Las Vegas After Thunderstorms - The Wall Street Journal",
 "description": "<ol><li>Flash Flooding Hits Las Vegas After Thunderstorms  The Wall Street Journal\r\n</li><li>Major rainfall leads to flash flooding in Las Vegas l ABC News  ABC News\r\n</li><li>Las Vegas Strip and iconic casinos impacted by flooding  Fox News\r\n</li><li>Officia…",
 "url": "https://www.wsj.com/articles/flash-flooding-hits-las-vegas-after-thunderstorms-11659119111",
 "urlToImage": "https://images.wsj.net/im-593786/social",
 "publishedAt": "2022-07-29T18:25:00Z",
 "content": "Fast-moving thunderstorms pounded Las Vegas Thursday, causing flooding in areas including casinos along the Vegas Strip. \r\nThe National Weather Service said that about an inch of rain fell within 60 … [+160 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Jinjoo Lee",
 "title": "Exxon Skips Its Victory Lap",
 "description": "It will take more than just happy shareholders to keep U.S. oil majors’ momentum going.",
 "url": "https://www.wsj.com/articles/exxon-skips-its-victory-lap-11659113998",
 "urlToImage": "https://images.wsj.net/im-593679/social",
 "publishedAt": "2022-07-29T17:00:00Z",
 "content": "More than a year after an \r\nactivist investor-led shake-up, Exxon Mobil has ticked a lot of boxes to endear itself to its shareholders. Now, the company is on a broader charm offensive.Exxon Mobil on… [+377 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Andrew Duehren and Siobhan Hughes",
 "title": "Kyrsten Sinema Is Critical Vote on Manchin-Schumer Climate and Tax Deal - The Wall Street Journal",
 "description": "<ol><li>Kyrsten Sinema Is Critical Vote on Manchin-Schumer Climate and Tax Deal  The Wall Street Journal\r\n</li><li>What's in the Manchin-Schumer tax hike and climate change bill?  Fox News\r\n</li><li>What's in the Charles Schumer-Joe Manchin 'Inflation Reducti…",
 "url": "https://www.wsj.com/articles/kyrsten-sinema-is-critical-vote-on-manchin-schumer-climate-and-tax-deal-11659110971",
 "urlToImage": "https://images.wsj.net/im-593846/social",
 "publishedAt": "2022-07-29T16:09:00Z",
 "content": "WASHINGTONDemocrats hopes of turning \r\na long-sought tax and energy agreement with Sen. Joe Manchin (D., W.Va.) into law now rest with another centrist Democrat in the 50-50 Senate with a history of … [+520 chars]"
 },
 -{
 -"source": {
 "id": "the-wall-street-journal",
 "name": "The Wall Street Journal"
 },
 "author": "Max-o-matic",
 "title": "All the Gear Your Need to Fill Your Backyard with Birds (and Learn Everything About Them)",
 "description": "Birdbaths, binoculars and an app that works like Shazam for bird calls are among the tools birding experts say will help you join the legions of people who began birding during the pandemic. No need to leave your neighborhood.",
 "url": "https://www.wsj.com/articles/birding-gear-guide-fill-your-backyard-with-birds-and-learn-everything-about-them-11659048126",
 "urlToImage": "https://images.wsj.net/im-593401/social",
 "publishedAt": "2022-07-29T14:23:54Z",
 "content": "IT WAS THE surf scoter that first caught Molly Adams attention. Back in 2012, she was looking through an interactive exhibit at the South Fork Natural History Museum in Bridgehampton, N.Y., where she… [+694 chars]"
 }
 ]
 }*/

