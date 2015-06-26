.class public final enum Lcom/kms/KisTheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Default:Lcom/kms/KisTheme;

.field private static final synthetic a:[Lcom/kms/KisTheme;


# instance fields
.field private final mMenuBubbleClosedBackgroundResId:I

.field private final mMenuBubbleOpenedBackgroundResId:I

.field private final mNotSelectedBackgroundColorResId:I

.field private final mNotSelectedTextColorResId:I

.field private final mSelectedBackgroundColorResId:I

.field private final mSelectedTextColorResId:I

.field private final mThemeResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v5, 0x7f0c0008

    const v4, 0x7f0c0006

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/kms/KisTheme;

    const-string v1, "Default"

    const v3, 0x7f0e0063

    const v8, 0x7f0200c7

    const v9, 0x7f0200c8

    move v6, v5

    move v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/kms/KisTheme;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lcom/kms/KisTheme;->Default:Lcom/kms/KisTheme;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kms/KisTheme;

    sget-object v1, Lcom/kms/KisTheme;->Default:Lcom/kms/KisTheme;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kms/KisTheme;->a:[Lcom/kms/KisTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 3

    .prologue
    const v2, 0x7f0c0008

    const v1, 0x7f0c0006

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    const v0, 0x7f0e0063

    iput v0, p0, Lcom/kms/KisTheme;->mThemeResId:I

    .line 23
    iput v1, p0, Lcom/kms/KisTheme;->mSelectedTextColorResId:I

    .line 24
    iput v2, p0, Lcom/kms/KisTheme;->mSelectedBackgroundColorResId:I

    .line 25
    iput v2, p0, Lcom/kms/KisTheme;->mNotSelectedTextColorResId:I

    .line 26
    iput v1, p0, Lcom/kms/KisTheme;->mNotSelectedBackgroundColorResId:I

    .line 27
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/kms/KisTheme;->mMenuBubbleClosedBackgroundResId:I

    .line 28
    const v0, 0x7f0200c8

    iput v0, p0, Lcom/kms/KisTheme;->mMenuBubbleOpenedBackgroundResId:I

    .line 29
    return-void
.end method

.method public static getShieldLabelColorError(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getShieldLabelColorInfo(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getShieldLabelColorWarning(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/KisTheme;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kms/KisTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/KisTheme;

    return-object v0
.end method

.method public static values()[Lcom/kms/KisTheme;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kms/KisTheme;->a:[Lcom/kms/KisTheme;

    invoke-virtual {v0}, [Lcom/kms/KisTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/KisTheme;

    return-object v0
.end method


# virtual methods
.method public final getDialogThemeResId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0e0065

    return v0
.end method

.method public final getMenuBubbleClosedBackgroundResId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/kms/KisTheme;->mMenuBubbleClosedBackgroundResId:I

    return v0
.end method

.method public final getMenuBubbleOpenedBackgroundResId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/kms/KisTheme;->mMenuBubbleOpenedBackgroundResId:I

    return v0
.end method

.method public final getNotSelectedBackgroundColorResId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kms/KisTheme;->mNotSelectedBackgroundColorResId:I

    return v0
.end method

.method public final getNotSelectedTextColorResId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/KisTheme;->mNotSelectedTextColorResId:I

    return v0
.end method

.method public final getSelectedBackgroundColorResId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kms/KisTheme;->mSelectedBackgroundColorResId:I

    return v0
.end method

.method public final getSelectedTextColorResId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/kms/KisTheme;->mSelectedTextColorResId:I

    return v0
.end method

.method public final getThemeResId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/kms/KisTheme;->mThemeResId:I

    return v0
.end method
