.class public final enum Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Error:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

.field public static final enum Info:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

.field public static final enum Warning:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

.field private static final synthetic a:[Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;


# instance fields
.field private final backgroundColorResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    new-instance v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    const-string v1, "Info"

    const v2, 0x7f0c0017

    invoke-direct {v0, v1, v3, v2}, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Info:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    .line 149
    new-instance v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    const-string v1, "Warning"

    const v2, 0x7f0c0016

    invoke-direct {v0, v1, v4, v2}, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Warning:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    .line 150
    new-instance v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    const-string v1, "Error"

    const v2, 0x7f0c0015

    invoke-direct {v0, v1, v5, v2}, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Error:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    sget-object v1, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Info:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Warning:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Error:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->a:[Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->backgroundColorResId:I

    .line 156
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    return-object v0
.end method

.method public static values()[Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->a:[Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    invoke-virtual {v0}, [Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    return-object v0
.end method


# virtual methods
.method public final getBackgroundColorResId()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->backgroundColorResId:I

    return v0
.end method
