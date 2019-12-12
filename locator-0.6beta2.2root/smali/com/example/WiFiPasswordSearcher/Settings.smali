.class public Lcom/example/WiFiPasswordSearcher/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final API_KEYS_VALID:Ljava/lang/String; = "KEYS_VALID"

.field public static final API_READ_KEY:Ljava/lang/String; = "READ_KEY"

.field public static final API_WRITE_KEY:Ljava/lang/String; = "WRITE_KEY"

.field public static final APP_CHECK_UPDATES:Ljava/lang/String; = "CHECK_UPDATES"

.field public static final APP_PREFERENCES:Ljava/lang/String; = "settings"

.field public static final APP_SERVER_LOGIN:Ljava/lang/String; = "SERVER_LOGIN"

.field public static final APP_SERVER_PASSWORD:Ljava/lang/String; = "SERVER_PASSWORD"

.field public static final APP_SERVER_URI:Ljava/lang/String; = "SERVER_URI"

.field public static final USER_GROUP:Ljava/lang/String; = "USER_GROUP"

.field public static final USER_NICK:Ljava/lang/String; = "USER_NICK"

.field public static final USER_REGDATE:Ljava/lang/String; = "USER_REGDATE"

.field public static final WIFI_SIGNAL:Ljava/lang/String; = "WIFI_SIGNAL"

.field public static final WPS_SOURCE:Ljava/lang/String; = "WPS_SOURCE"


# instance fields
.field public AppSettings:Landroid/content/SharedPreferences;

.field public Editor:Landroid/content/SharedPreferences$Editor;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/content/SharedPreferences;

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/content/SharedPreferences$Editor;

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    .line 34
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/Settings;->context:Landroid/content/Context;

    .line 35
    move-object v3, v0

    invoke-direct {v3}, Lcom/example/WiFiPasswordSearcher/Settings;->Init()V

    return-void
.end method

.method private Init()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/Settings;->context:Landroid/content/Context;

    const-string v4, "settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    .line 41
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public Reload()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/example/WiFiPasswordSearcher/Settings;->Init()V

    return-void
.end method
