.class public final enum Lcom/kms/menu/MenuButtonState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Normal:Lcom/kms/menu/MenuButtonState;

.field public static final enum Warning:Lcom/kms/menu/MenuButtonState;

.field private static final synthetic a:[Lcom/kms/menu/MenuButtonState;


# instance fields
.field private final mDrawableLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/kms/menu/MenuButtonState;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2, v2}, Lcom/kms/menu/MenuButtonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/menu/MenuButtonState;->Normal:Lcom/kms/menu/MenuButtonState;

    .line 8
    new-instance v0, Lcom/kms/menu/MenuButtonState;

    const-string v1, "Warning"

    invoke-direct {v0, v1, v3, v3}, Lcom/kms/menu/MenuButtonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/menu/MenuButtonState;->Warning:Lcom/kms/menu/MenuButtonState;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kms/menu/MenuButtonState;

    sget-object v1, Lcom/kms/menu/MenuButtonState;->Normal:Lcom/kms/menu/MenuButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/menu/MenuButtonState;->Warning:Lcom/kms/menu/MenuButtonState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kms/menu/MenuButtonState;->a:[Lcom/kms/menu/MenuButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/kms/menu/MenuButtonState;->mDrawableLevel:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/menu/MenuButtonState;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/kms/menu/MenuButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/menu/MenuButtonState;

    return-object v0
.end method

.method public static values()[Lcom/kms/menu/MenuButtonState;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kms/menu/MenuButtonState;->a:[Lcom/kms/menu/MenuButtonState;

    invoke-virtual {v0}, [Lcom/kms/menu/MenuButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/menu/MenuButtonState;

    return-object v0
.end method


# virtual methods
.method public final getDrawableLevel()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/kms/menu/MenuButtonState;->mDrawableLevel:I

    return v0
.end method
