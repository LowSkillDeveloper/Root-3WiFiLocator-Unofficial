.class public Lcom/example/WiFiPasswordSearcher/WPSActivity;
.super Landroid/app/Activity;
.source "WPSActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;,
        Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;,
        Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;,
        Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;,
        Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;,
        Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;
    }
.end annotation


# static fields
.field public static API_READ_KEY:Ljava/lang/String;

.field public static SERVER_URI:Ljava/lang/String;

.field public static context:Landroid/content/Context;

.field private static final listContextMenuItems:[Ljava/lang/String;

.field public static mLog:Landroid/widget/EditText;

.field public static r:I


# instance fields
.field private WifiMgr:Landroid/net/wifi/WifiManager;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/WiFiPasswordSearcher/ItemWps;",
            ">;"
        }
    .end annotation
.end field

.field private mDBHelper:Lcom/example/WiFiPasswordSearcher/DatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

.field private mWebView:Landroid/webkit/WebView;

.field pd:Landroid/app/ProgressDialog;

.field pins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/WiFiPasswordSearcher/WPSPin;",
            ">;"
        }
    .end annotation
.end field

.field private wpsCallback:Landroid/net/wifi/WifiManager$WpsCallback;

.field private wpsConnecting:Ljava/lang/Boolean;

.field wpsDb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field wpsMet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field wpsPin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile wpsReady:Z

.field wpsScore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->SERVER_URI:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->API_READ_KEY:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Connect using WPS... (without root)"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "Connect using WPS... (root)"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "Copy this WPS PIN"

    aput-object v5, v3, v4

    sput-object v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->listContextMenuItems:[Ljava/lang/String;

    const/4 v2, 0x0

    sput v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 752
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/app/ProgressDialog;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    move-object v2, v0

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    move v6, v3

    move-object v7, v4

    move-object v3, v7

    move v4, v6

    move-object v5, v7

    move v6, v4

    move-object v7, v5

    move-object v4, v7

    move v5, v6

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsConnecting:Ljava/lang/Boolean;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsMet:Ljava/util/ArrayList;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsScore:Ljava/util/ArrayList;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsDb:Ljava/util/ArrayList;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsReady:Z

    return-void
.end method

.method static synthetic access$L1000000(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/webkit/WebView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mWebView:Landroid/webkit/WebView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/net/wifi/WifiManager;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Lcom/example/WiFiPasswordSearcher/Settings;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/net/wifi/WifiManager$WpsCallback;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsCallback:Landroid/net/wifi/WifiManager$WpsCallback;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsConnecting:Ljava/lang/Boolean;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsReady:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000008()[Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->listContextMenuItems:[Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/example/WiFiPasswordSearcher/WPSActivity;Landroid/webkit/WebView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/example/WiFiPasswordSearcher/WPSActivity;Landroid/net/wifi/WifiManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/example/WiFiPasswordSearcher/WPSActivity;Lcom/example/WiFiPasswordSearcher/Settings;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/example/WiFiPasswordSearcher/WPSActivity;Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsCallback:Landroid/net/wifi/WifiManager$WpsCallback;

    return-void
.end method

.method static synthetic access$S1000004(Lcom/example/WiFiPasswordSearcher/WPSActivity;Ljava/lang/Boolean;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsConnecting:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$S1000007(Lcom/example/WiFiPasswordSearcher/WPSActivity;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsReady:Z

    return-void
.end method

.method static synthetic access$S1000008([Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->listContextMenuItems:[Ljava/lang/String;

    return-void
.end method

.method public static btnLogClick(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    move-object v0, p0

    sget-object v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mLog:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 747
    sget-object v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mLog:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lcom/example/WiFiPasswordSearcher/CliHelper;->INFO:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 748
    sget v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->r:I

    const/4 v4, 0x0

    if-ne v3, v4, :cond_0

    .line 749
    sget-object v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mLog:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, -0x1

    const/16 v7, 0x190

    invoke-direct {v5, v6, v7}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x190

    sput v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->r:I

    .line 751
    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mLog:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    sput v3, Lcom/example/WiFiPasswordSearcher/WPSActivity;->r:I

    goto :goto_0
.end method

.method private findAlgoByName(Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 649
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move v3, v8

    .line 650
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .line 654
    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 656
    const/4 v8, -0x1

    move v0, v8

    :goto_1
    return v0

    .line 650
    :cond_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v6, v8

    .line 652
    move-object v8, v1

    move-object v9, v6

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSPin;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 653
    move v8, v3

    move v0, v8

    goto :goto_1

    .line 654
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private findAlgoByPin(Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 637
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move v3, v8

    .line 638
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .line 642
    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 644
    const/4 v8, -0x1

    move v0, v8

    :goto_1
    return v0

    .line 638
    :cond_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v6, v8

    .line 640
    move-object v8, v1

    move-object v9, v6

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 641
    move v8, v3

    move v0, v8

    goto :goto_1

    .line 642
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public btnGenerate(Landroid/view/View;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 596
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v12, v2

    const v13, 0x7f070041

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const-string v13, "#1cd000"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 597
    move-object v12, v2

    const v13, 0x7f070040

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 598
    move-object v12, v2

    const v13, 0x7f070042

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 599
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v13, "WPS_SOURCE"

    const/4 v14, 0x2

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 600
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v12

    .line 601
    move-object v12, v2

    const v13, 0x7f070049

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object v5, v12

    .line 602
    move-object v12, v5

    const/4 v13, 0x0

    check-cast v13, Landroid/widget/ListAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 603
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 604
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsMet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 605
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 607
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v6, v12

    .line 612
    :goto_0
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 619
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v8, v12

    .line 624
    :goto_1
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 631
    move-object v12, v5

    new-instance v13, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 632
    move-object v12, v2

    const-string v13, "Selected source: WPS PIN Companion"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    return-void

    .line 607
    :cond_0
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v8, v12

    .line 609
    move-object v12, v8

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSPin;->sugg:Ljava/lang/Boolean;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_0

    .line 610
    :cond_1
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object v13, v8

    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 611
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsMet:Ljava/util/ArrayList;

    move-object v13, v8

    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/WPSPin;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 612
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    new-instance v13, Lcom/example/WiFiPasswordSearcher/ItemWps;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v8

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "<empty>"

    :goto_2
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSPin;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lcom/example/WiFiPasswordSearcher/WPSPin;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const-string v17, "STA"

    :goto_3
    const-string v18, "\u2714"

    invoke-direct/range {v14 .. v18}, Lcom/example/WiFiPasswordSearcher/ItemWps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    goto/16 :goto_0

    :cond_2
    move-object v15, v8

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v17, ""

    goto :goto_3

    .line 619
    :cond_4
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v10, v12

    .line 621
    move-object v12, v10

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSPin;->sugg:Ljava/lang/Boolean;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    goto/16 :goto_1

    .line 622
    :cond_5
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object v13, v10

    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 623
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsMet:Ljava/util/ArrayList;

    move-object v13, v10

    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/WPSPin;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 624
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    new-instance v13, Lcom/example/WiFiPasswordSearcher/ItemWps;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v10

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "<empty>"

    :goto_4
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSPin;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/example/WiFiPasswordSearcher/WPSPin;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const-string v17, "STA"

    :goto_5
    const-string v18, ""

    invoke-direct/range {v14 .. v18}, Lcom/example/WiFiPasswordSearcher/ItemWps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    goto/16 :goto_1

    :cond_6
    move-object v15, v10

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string v17, ""

    goto :goto_5
.end method

.method public btnLocalClick(Landroid/view/View;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 661
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v12, v2

    const v13, 0x7f070042

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const-string v13, "#1cd000"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 662
    move-object v12, v2

    const v13, 0x7f070041

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 663
    move-object v12, v2

    const v13, 0x7f070040

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 664
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v13, "WPS_SOURCE"

    const/4 v14, 0x3

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 665
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v12

    .line 666
    move-object v12, v2

    const v13, 0x7f070049

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object v5, v12

    .line 667
    move-object v12, v5

    const/4 v13, 0x0

    check-cast v13, Landroid/widget/ListAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 668
    move-object v12, v2

    invoke-virtual {v12}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "variable1"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 672
    move-object v12, v2

    :try_start_0
    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 673
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 674
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "SELECT * FROM pins WHERE mac=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v6

    const/16 v16, 0x0

    const/16 v17, 0x8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v7, v12

    .line 675
    move-object v12, v7

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    .line 678
    :cond_0
    move-object v12, v7

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 679
    move-object v12, v8

    const-string v13, "vacante"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 680
    const-string v12, ""

    move-object v8, v12

    .line 681
    :cond_1
    move-object v12, v2

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByPin(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    .line 683
    move v12, v9

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 685
    move-object v12, v8

    const-string v13, "airocon"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 686
    move-object v12, v2

    const-string v13, "Airocon Realtek"

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByName(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    .line 704
    :cond_2
    :goto_0
    move v12, v9

    const/4 v13, -0x1

    if-le v12, v13, :cond_3

    .line 706
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v10, v12

    .line 707
    move-object v12, v10

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    move-object v8, v12

    .line 711
    :cond_3
    move v12, v9

    const/4 v13, -0x1

    if-le v12, v13, :cond_d

    .line 713
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v10, v12

    .line 714
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    new-instance v13, Lcom/example/WiFiPasswordSearcher/ItemWps;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v8

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "<empty>"

    :goto_1
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSPin;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/example/WiFiPasswordSearcher/WPSPin;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const-string v17, "STA"

    :goto_2
    const-string v18, ""

    invoke-direct/range {v14 .. v18}, Lcom/example/WiFiPasswordSearcher/ItemWps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 730
    :goto_3
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 677
    move-object v12, v7

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 733
    move-object v12, v7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_4
    move-object v12, v5

    new-instance v13, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 741
    move-object v12, v5

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void

    .line 687
    :cond_4
    move-object v12, v8

    :try_start_1
    const-string v13, "arcady"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 688
    move-object v12, v2

    const-string v13, "Livebox Arcadyan"

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByName(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto/16 :goto_0

    .line 689
    :cond_5
    move-object v12, v8

    const-string v13, "asus"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 690
    move-object v12, v2

    const-string v13, "ASUS PIN"

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByName(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto/16 :goto_0

    .line 691
    :cond_6
    move-object v12, v8

    const-string v13, "dlink"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 692
    move-object v12, v2

    const-string v13, "D-Link PIN"

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByName(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto/16 :goto_0

    .line 693
    :cond_7
    move-object v12, v8

    const-string v13, "dlink1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 694
    move-object v12, v2

    const-string v13, "D-Link PIN +1"

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByName(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto/16 :goto_0

    .line 695
    :cond_8
    move-object v12, v8

    const-string v13, "thirtytwo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 696
    move-object v12, v2

    const-string v13, "32-bit PIN"

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByName(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto/16 :goto_0

    .line 699
    :cond_9
    move-object v12, v8

    const-string v13, "twentyeight"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 700
    move-object v12, v2

    const-string v13, "28-bit PIN"

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByName(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto/16 :goto_0

    .line 701
    :cond_a
    move-object v12, v8

    const-string v13, "zhao"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 702
    move-object v12, v2

    const-string v13, "24-bit PIN"

    invoke-direct {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findAlgoByName(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    goto/16 :goto_0

    .line 714
    :cond_b
    move-object v15, v8

    goto/16 :goto_1

    :cond_c
    const-string v17, ""

    goto/16 :goto_2

    .line 723
    :cond_d
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    new-instance v13, Lcom/example/WiFiPasswordSearcher/ItemWps;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v8

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const-string v15, "<empty>"

    :goto_5
    const-string v16, "Unknown"

    move-object/from16 v17, v8

    const-string v18, "[0-9]+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    const-string v17, "STA"

    :goto_6
    const-string v18, ""

    invoke-direct/range {v14 .. v18}, Lcom/example/WiFiPasswordSearcher/ItemWps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    goto/16 :goto_3

    :cond_e
    move-object v15, v8

    goto :goto_5

    :cond_f
    const-string v17, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 733
    :catch_0
    move-exception v12

    move-object v7, v12

    .line 737
    move-object v12, v2

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    new-instance v13, Lcom/example/WiFiPasswordSearcher/ItemWps;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    const/4 v15, 0x0

    check-cast v15, Ljava/lang/String;

    const-string v16, "No pins found"

    const/16 v17, 0x0

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/String;

    invoke-direct/range {v14 .. v18}, Lcom/example/WiFiPasswordSearcher/ItemWps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    goto/16 :goto_4
.end method

.method public btnwpsbaseclick(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const v6, 0x7f070040

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "#1cd000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 524
    move-object v5, v0

    const v6, 0x7f070041

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 525
    move-object v5, v0

    const v6, 0x7f070042

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 526
    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "WPS_SOURCE"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 527
    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    .line 528
    move-object v5, v0

    invoke-virtual {v5}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "variable1"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 529
    new-instance v5, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    const-string v13, "com.aide.ui"

    invoke-static {v12, v13}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    move-object v12, v0

    move-object v13, v1

    invoke-super {v12, v13}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    move-object v12, v0

    const v13, 0x7f03000b

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->setContentView(I)V

    .line 69
    move-object v12, v0

    sput-object v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->context:Landroid/content/Context;

    .line 70
    move-object v12, v0

    const v13, 0x7f070044

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    sput-object v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mLog:Landroid/widget/EditText;

    .line 72
    move-object v12, v0

    new-instance v13, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v13, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mDBHelper:Lcom/example/WiFiPasswordSearcher/DatabaseHelper;

    .line 76
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mDBHelper:Lcom/example/WiFiPasswordSearcher/DatabaseHelper;

    invoke-virtual {v12}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->updateDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    move-object v12, v0

    move-object v13, v0

    :try_start_1
    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mDBHelper:Lcom/example/WiFiPasswordSearcher/DatabaseHelper;

    invoke-virtual {v13}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    iput-object v13, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x9

    if-le v12, v13, :cond_0

    .line 94
    new-instance v12, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v12}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    move-object v3, v12

    .line 95
    move-object v12, v3

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 97
    :cond_0
    move-object v12, v0

    new-instance v13, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-virtual {v15}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    iput-object v13, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    .line 99
    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v13, "SERVER_URI"

    const-string v14, "http://3wifi.stascorp.com"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->SERVER_URI:Ljava/lang/String;

    .line 100
    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v13, "READ_KEY"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->API_READ_KEY:Ljava/lang/String;

    .line 102
    move-object v12, v0

    invoke-virtual {v12}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    move-object v3, v12

    .line 103
    move-object v12, v3

    invoke-virtual {v12}, Landroid/app/ActionBar;->hide()V

    .line 105
    move-object v12, v0

    const v13, 0x7f070046

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object v4, v12

    .line 106
    move-object v12, v0

    invoke-virtual {v12}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "variable"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 107
    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    move-object v12, v0

    const v13, 0x7f070047

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object v6, v12

    .line 109
    move-object v12, v0

    invoke-virtual {v12}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "variable1"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 110
    move-object v12, v6

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    iput-object v13, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    .line 115
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_1

    .line 117
    move-object v12, v0

    new-instance v13, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V

    iput-object v13, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsCallback:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 216
    :cond_1
    move-object v12, v0

    const v13, 0x7f070049

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object v8, v12

    .line 217
    move-object v12, v8

    new-instance v13, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v17}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000005;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    move-object v12, v0

    move-object v13, v0

    const v14, 0x7f070045

    invoke-virtual {v13, v14}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/webkit/WebView;

    iput-object v13, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mWebView:Landroid/webkit/WebView;

    .line 292
    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v13, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V

    const-string v14, "JavaHandler"

    invoke-virtual {v12, v13, v14}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v13, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 303
    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 304
    new-instance v12, Lcom/example/WiFiPasswordSearcher/AppVersion;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v0

    invoke-virtual {v14}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/example/WiFiPasswordSearcher/AppVersion;-><init>(Landroid/content/Context;)V

    move-object v9, v12

    .line 305
    move-object v12, v9

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/Boolean;

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v13, v19

    move/from16 v14, v18

    move-object/from16 v15, v19

    move/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v14, v19

    move/from16 v15, v18

    invoke-direct {v14, v15}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionInit(Ljava/lang/Boolean;)V

    .line 306
    move-object v12, v9

    invoke-virtual {v12}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionGetPath()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 307
    move-object v12, v10

    if-nez v12, :cond_2

    .line 308
    const-string v12, "/android_asset/wpspin.html"

    move-object v10, v12

    .line 309
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/WPSActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 311
    new-instance v12, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    invoke-virtual {v12, v13}, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v12

    return-void

    .line 76
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 80
    new-instance v12, Ljava/lang/Error;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "UnableToUpdateDatabase"

    invoke-direct {v13, v14}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v12

    .line 85
    :catch_1
    move-exception v12

    move-object v3, v12

    .line 89
    move-object v12, v3

    throw v12
.end method
