.class Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser$IDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdRecording"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field level:I

.field sb:Ljava/lang/StringBuilder;

.field final synthetic this$1:Lcom/larvalabs/svgandroid/SVGParser$IDHandler;


# direct methods
.method public constructor <init>(Lcom/larvalabs/svgandroid/SVGParser$IDHandler;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1073
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->this$1:Lcom/larvalabs/svgandroid/SVGParser$IDHandler;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1074
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->id:Ljava/lang/String;

    .line 1075
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->level:I

    .line 1076
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    .line 1077
    return-void
.end method
