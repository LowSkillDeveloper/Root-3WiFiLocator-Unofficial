.class public final enum Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
.super Ljava/lang/Enum;
.source "PreserveAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/PreserveAspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 118
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "None"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 119
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 120
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMinYMin"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 122
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMidYMin"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 124
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMaxYMin"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 125
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 126
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMinYMid"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 127
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 128
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMidYMid"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 129
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 130
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMaxYMid"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 131
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 132
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMinYMax"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 133
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 134
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMidYMax"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 135
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 136
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "XMaxYMax"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;-><init>(Ljava/lang/String;I)V

    .line 137
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 116
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    aput-object v3, v1, v2

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ENUM$VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    .locals 3

    .prologue
    .line 1
    move-object v0, p0

    const-class v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    .locals 9

    .prologue
    .line 1
    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ENUM$VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

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

    new-array v5, v5, [Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

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
