.class public final enum Lcom/kaspersky/components/views/ScreenSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Large:Lcom/kaspersky/components/views/ScreenSize;

.field public static final enum Normal:Lcom/kaspersky/components/views/ScreenSize;

.field public static final enum Small:Lcom/kaspersky/components/views/ScreenSize;

.field public static final enum XLarge:Lcom/kaspersky/components/views/ScreenSize;

.field private static final synthetic a:[Lcom/kaspersky/components/views/ScreenSize;


# instance fields
.field private final mScreenSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7
    new-instance v0, Lcom/kaspersky/components/views/ScreenSize;

    const-string v1, "Small"

    invoke-direct {v0, v1, v5, v2}, Lcom/kaspersky/components/views/ScreenSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/ScreenSize;->Small:Lcom/kaspersky/components/views/ScreenSize;

    .line 8
    new-instance v0, Lcom/kaspersky/components/views/ScreenSize;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/views/ScreenSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/ScreenSize;->Normal:Lcom/kaspersky/components/views/ScreenSize;

    .line 9
    new-instance v0, Lcom/kaspersky/components/views/ScreenSize;

    const-string v1, "Large"

    invoke-direct {v0, v1, v3, v4}, Lcom/kaspersky/components/views/ScreenSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/ScreenSize;->Large:Lcom/kaspersky/components/views/ScreenSize;

    .line 10
    new-instance v0, Lcom/kaspersky/components/views/ScreenSize;

    const-string v1, "XLarge"

    invoke-direct {v0, v1, v4, v6}, Lcom/kaspersky/components/views/ScreenSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/views/ScreenSize;->XLarge:Lcom/kaspersky/components/views/ScreenSize;

    .line 5
    new-array v0, v6, [Lcom/kaspersky/components/views/ScreenSize;

    sget-object v1, Lcom/kaspersky/components/views/ScreenSize;->Small:Lcom/kaspersky/components/views/ScreenSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/views/ScreenSize;->Normal:Lcom/kaspersky/components/views/ScreenSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/views/ScreenSize;->Large:Lcom/kaspersky/components/views/ScreenSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/views/ScreenSize;->XLarge:Lcom/kaspersky/components/views/ScreenSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/components/views/ScreenSize;->a:[Lcom/kaspersky/components/views/ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/kaspersky/components/views/ScreenSize;->mScreenSize:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/views/ScreenSize;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/kaspersky/components/views/ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/ScreenSize;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/views/ScreenSize;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kaspersky/components/views/ScreenSize;->a:[Lcom/kaspersky/components/views/ScreenSize;

    invoke-virtual {v0}, [Lcom/kaspersky/components/views/ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/views/ScreenSize;

    return-object v0
.end method


# virtual methods
.method public final isAtLeast(Landroid/content/res/Configuration;)Z
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/kaspersky/components/views/ScreenSize;->mScreenSize:I

    invoke-static {v0, p1}, LbI;->a(ILandroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method
