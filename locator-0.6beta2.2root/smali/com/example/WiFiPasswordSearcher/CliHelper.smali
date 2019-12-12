.class public Lcom/example/WiFiPasswordSearcher/CliHelper;
.super Ljava/lang/Object;
.source "CliHelper.java"


# static fields
.field public static CLI_NAME:Ljava/lang/String;

.field public static CLI_PATH:Ljava/lang/String;

.field public static CTRL_DIR:Ljava/lang/String;

.field public static INFO:Ljava/lang/StringBuilder;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_PATH:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v2, Lcom/example/WiFiPasswordSearcher/CliHelper;->INFO:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    .prologue
    .line 24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v8, 0x1

    :try_start_0
    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v8

    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->isAnyShellOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    const/4 v8, 0x0

    const-string v9, "cat /data/misc/wifi/wpa_supplicant.conf"

    invoke-static {v8, v9}, Lcom/example/WiFiPasswordSearcher/Tools;->rootCommand(ILjava/lang/String;)V

    .line 34
    sget-object v8, Lcom/example/WiFiPasswordSearcher/Tools;->outcommand:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    .line 35
    sget-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    sget-object v9, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    const-string v10, "=/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    .line 36
    sget-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->INFO:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "\nctrl sockets path:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    sget-object v11, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 37
    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, " -p "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CTRL_DIR:Ljava/lang/String;

    .line 39
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_8

    .line 40
    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "/files/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_PATH:Ljava/lang/String;

    .line 43
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move v3, v8

    .line 44
    sget-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->INFO:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v16, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\nversion sdk: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move v13, v3

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\nandroid version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 49
    move v8, v3

    const/16 v9, 0xf

    if-ne v8, v9, :cond_1

    const-string v8, "wpa_cli404"

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    .line 50
    :cond_1
    move v8, v3

    const/16 v9, 0x10

    if-ne v8, v9, :cond_2

    const-string v8, "wpa_cli41"

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    .line 51
    :cond_2
    move v8, v3

    const/16 v9, 0x11

    if-ne v8, v9, :cond_3

    const-string v8, "wpa_cli41"

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    .line 52
    :cond_3
    move v8, v3

    const/16 v9, 0x12

    if-ne v8, v9, :cond_4

    const-string v8, "wpa_cli43"

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    .line 53
    :cond_4
    move v8, v3

    const/16 v9, 0x15

    if-ge v8, v9, :cond_9

    const/4 v8, 0x0

    :goto_2
    move v9, v3

    const/16 v10, 0x16

    if-le v9, v10, :cond_a

    const/4 v9, 0x0

    :goto_3
    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    const-string v8, "wpa_cli50"

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    .line 54
    :cond_5
    move v8, v3

    const/16 v9, 0x17

    if-lt v8, v9, :cond_6

    const-string v8, "wpa_cli60"

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    .line 56
    :cond_6
    new-instance v8, Ljava/io/File;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    const-string v10, "/system/bin/wpa_cli"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 57
    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 59
    sget-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->INFO:Ljava/lang/StringBuilder;

    const-string v9, "\n\u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 wpa_cli\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 60
    const-string v8, ""

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_PATH:Ljava/lang/String;

    const-string v8, "wpa_cli"

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    .line 68
    :goto_4
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->mContext:Landroid/content/Context;

    .line 70
    new-instance v8, Ljava/io/File;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v11, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    sget-object v11, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 71
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    .line 75
    move-object v8, v0

    :try_start_1
    invoke-direct {v8}, Lcom/example/WiFiPasswordSearcher/CliHelper;->copyCli()V

    .line 76
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    :cond_7
    :goto_5
    return-void

    .line 27
    :catch_0
    move-exception v8

    move-object v3, v8

    goto/16 :goto_0

    .line 42
    :cond_8
    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "/data/data/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "/files/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_PATH:Ljava/lang/String;

    goto/16 :goto_1

    .line 53
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 64
    :cond_b
    sget-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->INFO:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "\n\u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 wpa_cli \u043e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u0435\u0442\n\u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    sget-object v11, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_4

    .line 76
    :catch_1
    move-exception v8

    move-object v6, v8

    goto/16 :goto_5
.end method

.method private copyCli()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/CliHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    sget-object v8, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    move-object v2, v7

    .line 86
    new-instance v7, Ljava/io/FileOutputStream;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v10, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Lcom/example/WiFiPasswordSearcher/CliHelper;->CLI_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 87
    const/16 v7, 0x400

    new-array v7, v7, [B

    move-object v4, v7

    .line 89
    :goto_0
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v11, v7

    move v7, v11

    move v8, v11

    move v5, v8

    const/4 v8, 0x0

    if-gt v7, v8, :cond_0

    .line 91
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 92
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 93
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    return-void

    .line 90
    :cond_0
    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
