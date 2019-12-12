.class public final enum Lcom/caverock/androidsvg/SVG$Unit;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/SVG$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum cm:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum em:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum ex:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum in:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum mm:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum pc:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum percent:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum pt:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum px:Lcom/caverock/androidsvg/SVG$Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 109
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "px"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 110
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "em"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    .line 111
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ex"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    .line 112
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "in"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    .line 113
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "cm"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    .line 114
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "mm"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    .line 115
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "pt"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    .line 116
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "pc"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    .line 117
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "percent"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Unit;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v3, v1, v2

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;
    .locals 3

    .prologue
    .line 1
    move-object v0, p0

    const-class v1, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Unit;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Unit;
    .locals 9

    .prologue
    .line 1
    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->ENUM$VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v0, v4

    const/4 v4, 0x0

    move-object v5, v0

    array-length v5, v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v1, v6

    new-array v5, v5, [Lcom/caverock/androidsvg/SVG$Unit;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
