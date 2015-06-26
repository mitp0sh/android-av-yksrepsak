.class public final enum Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

.field public static final enum Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

.field public static final enum On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

.field private static final synthetic a:[Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;


# instance fields
.field private final mFeatureStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    const-string v1, "NotAvailable"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 21
    new-instance v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    const-string v1, "Off"

    invoke-direct {v0, v1, v4, v3}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 22
    new-instance v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    const-string v1, "On"

    invoke-direct {v0, v1, v5, v4}, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    sget-object v1, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->NotAvailable:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->Off:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->On:Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->a:[Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->mFeatureStatus:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->a:[Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;

    return-object v0
.end method


# virtual methods
.method public final getFeatureStatus()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/kaspersky/components/ucp/MobileStatus$FeatureStatus;->mFeatureStatus:I

    return v0
.end method
