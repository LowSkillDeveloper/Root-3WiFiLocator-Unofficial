.class public Lcom/example/WiFiPasswordSearcher/ItemWps;
.super Ljava/lang/Object;
.source "ItemWps.java"


# instance fields
.field db:Ljava/lang/String;

.field metod:Ljava/lang/String;

.field pin:Ljava/lang/String;

.field score:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 12
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 13
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/ItemWps;->pin:Ljava/lang/String;

    .line 14
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/ItemWps;->metod:Ljava/lang/String;

    .line 15
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/ItemWps;->score:Ljava/lang/String;

    .line 16
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/ItemWps;->db:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDb()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/ItemWps;->db:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/ItemWps;->pin:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/ItemWps;->score:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getSubHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/ItemWps;->metod:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public setDb(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/ItemWps;->db:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/ItemWps;->pin:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/ItemWps;->score:Ljava/lang/String;

    return-void
.end method

.method public setSubHeader(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/ItemWps;->metod:Ljava/lang/String;

    return-void
.end method
