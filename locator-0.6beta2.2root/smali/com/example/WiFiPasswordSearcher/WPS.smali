.class public Lcom/example/WiFiPasswordSearcher/WPS;
.super Ljava/lang/Object;
.source "WPS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WPS$CheckConnection;
    }
.end annotation


# static fields
.field private static appin:Ljava/lang/String;

.field private static ctx:Landroid/content/Context;

.field private static essd:Ljava/lang/String;

.field private static pd:Landroid/app/ProgressDialog;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->context:Landroid/content/Context;

    sput-object v2, Lcom/example/WiFiPasswordSearcher/WPS;->ctx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000()Landroid/app/ProgressDialog;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/WPS;->pd:Landroid/app/ProgressDialog;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000001()Landroid/content/Context;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/WPS;->ctx:Landroid/content/Context;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000002()Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/WPS;->essd:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000003()Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/WPS;->appin:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/app/ProgressDialog;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/WPS;->pd:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$S1000001(Landroid/content/Context;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/WPS;->ctx:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$S1000002(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/WPS;->essd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000003(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/WPS;->appin:Ljava/lang/String;

    return-void
.end method

.method public static connectRoot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x1

    sput-boolean v6, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 26
    move-object v6, v0

    sput-object v6, Lcom/example/WiFiPasswordSearcher/WPS;->essd:Ljava/lang/String;

    .line 27
    move-object v6, v2

    sput-object v6, Lcom/example/WiFiPasswordSearcher/WPS;->appin:Ljava/lang/String;

    .line 28
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v4, v6

    .line 29
    new-instance v6, Lcom/example/WiFiPasswordSearcher/WPS$CheckConnection;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lcom/example/WiFiPasswordSearcher/WPS$CheckConnection;-><init>()V

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/WPS$CheckConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v6

    return-void
.end method
