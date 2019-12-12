.class public Lcom/example/WiFiPasswordSearcher/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static DB_NAME:Ljava/lang/String; = null

.field private static DB_PATH:Ljava/lang/String; = null

.field private static final DB_VERSION:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field private mNeedUpdate:Z


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const-string v2, "pin.db"

    sput-object v2, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mNeedUpdate:Z

    .line 25
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 26
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/databases/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    .line 30
    :goto_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 32
    move-object v3, v0

    invoke-direct {v3}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->copyDataBase()V

    .line 34
    move-object v3, v0

    invoke-virtual {v3}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    return-void

    .line 28
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/databases/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkDataBase()Z
    .locals 9

    .prologue
    .line 51
    move-object v0, p0

    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 52
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    move v0, v4

    return v0
.end method

.method private copyDBFile()V
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
    .line 66
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    sget-object v8, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    move-object v2, v7

    .line 68
    new-instance v7, Ljava/io/FileOutputStream;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v10, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 69
    const/16 v7, 0x400

    new-array v7, v7, [B

    move-object v4, v7

    .line 71
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

    .line 73
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 74
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 75
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    return-void

    .line 72
    :cond_0
    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private copyDataBase()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v4, v0

    invoke-direct {v4}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->checkDataBase()Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    move-object v4, v0

    invoke-virtual {v4}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 58
    move-object v4, v0

    invoke-virtual {v4}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->close()V

    .line 60
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->copyDBFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v3

    move v6, v2

    if-le v5, v6, :cond_0

    .line 98
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mNeedUpdate:Z

    :cond_0
    return-void
.end method

.method public openDataBase()Z
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updateDataBase()V
    .locals 9
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
    .line 39
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mNeedUpdate:Z

    if-eqz v4, :cond_1

    .line 40
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 41
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 44
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->copyDataBase()V

    .line 46
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/example/WiFiPasswordSearcher/DatabaseHelper;->mNeedUpdate:Z

    :cond_1
    return-void
.end method
