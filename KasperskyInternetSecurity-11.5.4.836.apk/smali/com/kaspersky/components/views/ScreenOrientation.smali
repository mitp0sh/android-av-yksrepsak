.class public final enum Lcom/kaspersky/components/views/ScreenOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Landscape:Lcom/kaspersky/components/views/ScreenOrientation;

.field public static final enum Portrait:Lcom/kaspersky/components/views/ScreenOrientation;

.field public static final enum Square:Lcom/kaspersky/components/views/ScreenOrientation;

.field private static final synthetic a:[Lcom/kaspersky/components/views/ScreenOrientation;


# instance fields
.field private final mVertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5
    new-instance v0, Lcom/kaspersky/components/views/ScreenOrientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v3, v2}, Lcom/kaspersky/components/views/ScreenOrientation;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->Portrait:Lcom/kaspersky/components/views/ScreenOrientation;

    .line 6
    new-instance v0, Lcom/kaspersky/components/views/ScreenOrientation;

    const-string v1, "Landscape"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/views/ScreenOrientation;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->Landscape:Lcom/kaspersky/components/views/ScreenOrientation;

    .line 7
    new-instance v0, Lcom/kaspersky/components/views/ScreenOrientation;

    const-string v1, "Square"

    invoke-direct {v0, v1, v4, v2}, Lcom/kaspersky/components/views/ScreenOrientation;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->Square:Lcom/kaspersky/components/views/ScreenOrientation;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/components/views/ScreenOrientation;

    sget-object v1, Lcom/kaspersky/components/views/ScreenOrientation;->Portrait:Lcom/kaspersky/components/views/ScreenOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/views/ScreenOrientation;->Landscape:Lcom/kaspersky/components/views/ScreenOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/views/ScreenOrientation;->Square:Lcom/kaspersky/components/views/ScreenOrientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->a:[Lcom/kaspersky/components/views/ScreenOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-boolean p3, p0, Lcom/kaspersky/components/views/ScreenOrientation;->mVertical:Z

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/views/ScreenOrientation;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/components/views/ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/ScreenOrientation;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/views/ScreenOrientation;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/components/views/ScreenOrientation;->a:[Lcom/kaspersky/components/views/ScreenOrientation;

    invoke-virtual {v0}, [Lcom/kaspersky/components/views/ScreenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/views/ScreenOrientation;

    return-object v0
.end method


# virtual methods
.method public final isVertical()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/kaspersky/components/views/ScreenOrientation;->mVertical:Z

    return v0
.end method
