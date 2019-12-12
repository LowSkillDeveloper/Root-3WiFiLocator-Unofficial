.class public Lcom/caverock/androidsvg/SVG$SvgElementBase;
.super Lcom/caverock/androidsvg/SVG$SvgObject;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SvgElementBase"
.end annotation


# instance fields
.field public baseStyle:Lcom/caverock/androidsvg/SVG$Style;

.field public classNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public spacePreserve:Ljava/lang/Boolean;

.field public style:Lcom/caverock/androidsvg/SVG$Style;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 1389
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgObject;-><init>()V

    .line 1391
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    .line 1392
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 1393
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 1394
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 1395
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    .line 1389
    return-void
.end method
