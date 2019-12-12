.class public Lcom/example/WiFiPasswordSearcher/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# instance fields
.field private API_READ_KEY:Ljava/lang/String;

.field private APP_VERSION:Ljava/lang/String;

.field public Level:Ljava/lang/Integer;

.field public Login:Ljava/lang/String;

.field public NickName:Ljava/lang/String;

.field public RegDate:Ljava/lang/String;

.field private SERVER_URI:Ljava/lang/String;

.field private mSettings:Lcom/example/WiFiPasswordSearcher/Settings;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Lcom/example/WiFiPasswordSearcher/Settings;

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->APP_VERSION:Ljava/lang/String;

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->SERVER_URI:Ljava/lang/String;

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->API_READ_KEY:Ljava/lang/String;

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->Login:Ljava/lang/String;

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->NickName:Ljava/lang/String;

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->RegDate:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, -0x1

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->Level:Ljava/lang/Integer;

    .line 28
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->APP_VERSION:Ljava/lang/String;

    .line 29
    move-object v3, v0

    new-instance v4, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    .line 30
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/UserManager;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v5, "SERVER_URI"

    const-string v6, "http://3wifi.stascorp.com"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->SERVER_URI:Ljava/lang/String;

    .line 31
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/UserManager;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v5, "READ_KEY"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->API_READ_KEY:Ljava/lang/String;

    .line 32
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/UserManager;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v5, "SERVER_LOGIN"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->Login:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GetErrorDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, "database"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    const-string v3, "Database maintenance, try again later"

    move-object v0, v3

    .line 69
    :goto_0
    return-object v0

    .line 65
    :cond_0
    move-object v3, v1

    const-string v4, "loginfail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v3, "Username or password incorrect"

    move-object v0, v3

    goto :goto_0

    .line 67
    :cond_1
    move-object v3, v1

    const-string v4, "form"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    const-string v3, "Please fill required form fields"

    move-object v0, v3

    goto :goto_0

    .line 69
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public GetGroup()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->Level:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/example/WiFiPasswordSearcher/UserManager;->GetTextGroup(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public GetTextGroup(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 58
    const-string v3, ""

    move-object v0, v3

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    const-string v3, "Banned"

    move-object v0, v3

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v3, "No logged"

    move-object v0, v3

    goto :goto_0

    .line 53
    :pswitch_2
    const-string v3, "Guest"

    move-object v0, v3

    goto :goto_0

    .line 54
    :pswitch_3
    const-string v3, "User"

    move-object v0, v3

    goto :goto_0

    .line 55
    :pswitch_4
    const-string v3, "Developer"

    move-object v0, v3

    goto :goto_0

    .line 56
    :pswitch_5
    const-string v3, "Administrator"

    move-object v0, v3

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getFromSettings()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v4, "USER_NICK"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/UserManager;->NickName:Ljava/lang/String;

    .line 38
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v4, "USER_REGDATE"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/UserManager;->RegDate:Ljava/lang/String;

    .line 39
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/UserManager;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v4, "USER_GROUP"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/Integer;

    move v6, v3

    move-object v7, v4

    move-object v3, v7

    move v4, v6

    move-object v5, v7

    move v6, v4

    move-object v7, v5

    move-object v4, v7

    move v5, v6

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/UserManager;->Level:Ljava/lang/Integer;

    return-void
.end method
