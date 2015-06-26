.class public final enum Lcom/kms/antivirus/AntivirusScanType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Folder:Lcom/kms/antivirus/AntivirusScanType;

.field public static final enum Full:Lcom/kms/antivirus/AntivirusScanType;

.field public static final enum Quick:Lcom/kms/antivirus/AntivirusScanType;

.field private static final synthetic a:[Lcom/kms/antivirus/AntivirusScanType;


# instance fields
.field private final mDescriptionResId:I

.field private final mNameResId:I

.field private final mScanEvent:Lkk;

.field private final mScanFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v11, 0x1

    .line 12
    new-instance v0, Lcom/kms/antivirus/AntivirusScanType;

    const-string v1, "Quick"

    const v3, 0x7f0703bd

    const v4, 0x7f070470

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/kms/antivirus/AntivirusScanType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/kms/antivirus/AntivirusScanType;->Quick:Lcom/kms/antivirus/AntivirusScanType;

    .line 17
    new-instance v3, Lcom/kms/antivirus/AntivirusScanType;

    const-string v4, "Full"

    const v6, 0x7f0703bb

    const v7, 0x7f07046e

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/kms/antivirus/AntivirusScanType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/kms/antivirus/AntivirusScanType;->Full:Lcom/kms/antivirus/AntivirusScanType;

    .line 22
    new-instance v6, Lcom/kms/antivirus/AntivirusScanType;

    const-string v7, "Folder"

    const v9, 0x7f0703bc

    const v10, 0x7f07046f

    invoke-direct/range {v6 .. v11}, Lcom/kms/antivirus/AntivirusScanType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/kms/antivirus/AntivirusScanType;->Folder:Lcom/kms/antivirus/AntivirusScanType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/antivirus/AntivirusScanType;

    sget-object v1, Lcom/kms/antivirus/AntivirusScanType;->Quick:Lcom/kms/antivirus/AntivirusScanType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/antivirus/AntivirusScanType;->Full:Lcom/kms/antivirus/AntivirusScanType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/kms/antivirus/AntivirusScanType;->Folder:Lcom/kms/antivirus/AntivirusScanType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/kms/antivirus/AntivirusScanType;->a:[Lcom/kms/antivirus/AntivirusScanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    sget-object v0, Lcom/kms/UiEventType;->TypedScanRequested:Lcom/kms/UiEventType;

    invoke-virtual {v0, p0}, Lcom/kms/UiEventType;->newEvent(Ljava/lang/Object;)Lkk;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antivirus/AntivirusScanType;->mScanEvent:Lkk;

    .line 34
    iput p3, p0, Lcom/kms/antivirus/AntivirusScanType;->mNameResId:I

    .line 35
    iput p4, p0, Lcom/kms/antivirus/AntivirusScanType;->mDescriptionResId:I

    .line 36
    iput p5, p0, Lcom/kms/antivirus/AntivirusScanType;->mScanFlag:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antivirus/AntivirusScanType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kms/antivirus/AntivirusScanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusScanType;

    return-object v0
.end method

.method public static values()[Lcom/kms/antivirus/AntivirusScanType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kms/antivirus/AntivirusScanType;->a:[Lcom/kms/antivirus/AntivirusScanType;

    invoke-virtual {v0}, [Lcom/kms/antivirus/AntivirusScanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antivirus/AntivirusScanType;

    return-object v0
.end method


# virtual methods
.method public final createScanEvent()Lkk;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kms/antivirus/AntivirusScanType;->mScanEvent:Lkk;

    return-object v0
.end method

.method public final getDescriptionResId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/kms/antivirus/AntivirusScanType;->mDescriptionResId:I

    return v0
.end method

.method public final getNameResId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/kms/antivirus/AntivirusScanType;->mNameResId:I

    return v0
.end method

.method public final getScanFlag()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kms/antivirus/AntivirusScanType;->mScanFlag:I

    return v0
.end method
