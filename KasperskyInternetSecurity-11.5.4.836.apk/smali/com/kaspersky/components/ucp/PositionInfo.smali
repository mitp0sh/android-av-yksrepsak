.class public Lcom/kaspersky/components/ucp/PositionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAltitude:D

.field private final mAltitudeError:D

.field private final mLatitude:D

.field private final mLatitudeError:D

.field private final mLongitude:D

.field private final mLongitudeError:D

.field private final mMcc:I

.field private final mMnc:I

.field private final mSpeed:D

.field private final mSpeedError:D


# direct methods
.method public constructor <init>(DDDDDDIIDD)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mAltitude:D

    .line 46
    iput-wide p3, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mAltitudeError:D

    .line 47
    iput-wide p5, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mLatitude:D

    .line 48
    iput-wide p7, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mLatitudeError:D

    .line 49
    iput-wide p9, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mLongitude:D

    .line 50
    iput-wide p11, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mLongitudeError:D

    .line 51
    iput p13, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mMcc:I

    .line 52
    move/from16 v0, p14

    iput v0, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mMnc:I

    .line 53
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mSpeed:D

    .line 54
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/kaspersky/components/ucp/PositionInfo;->mSpeedError:D

    .line 55
    return-void
.end method
