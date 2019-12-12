.class public Lcom/caverock/androidsvg/CSSParser$Attrib;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attrib"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public operation:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    .line 84
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    .line 88
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    .line 89
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Attrib;->operation:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 90
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    .line 91
    return-void
.end method
